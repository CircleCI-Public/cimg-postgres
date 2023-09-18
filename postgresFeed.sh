#!/usr/bin/env bash
vers=()

if [ -f shared/automated-updates.sh ]; then
  source shared/automated-updates.sh
else
  echo "Check if submodule was loaded; automated-updates.sh is missing"
  exit 1
fi

getPostGISVersion() {
  local templateFile=$1
  RSS_URL="https://github.com/postgis/postgis/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^[0-9]+(\.[0-9]+)*$ ]]; then
      generateVersions "$version"
      generateSearchTerms "POSTGIS_VER=" "$templateFile" ""
      replaceVersions "POSTGIS_VER=" "$SEARCH_TERM" true
    fi
  done
}

getPostgresVersion() {
  echo "Getting latest PostGIS version..."
  getPostGISVersion "variants/postgis.Dockerfile.template"

  RSS_URL="https://github.com/postgres/postgres/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^REL_[0-9]+(\_[0-9]+)*$ ]]; then
      generateVersions "$(echo "$version" | sed -r 's/REL_//g; s/_/./g')"
      generateSearchTerms "PG_VER=" "$majorMinor/Dockerfile" ""
      directoryCheck "$majorMinor" "$SEARCH_TERM" true
    fi
  done
}

getPostgresVersion

if [ -n "${vers[*]}" ]; then
  echo "Included version updates: ${vers[*]}"
  echo "Running release script"
  ./shared/release.sh "${vers[@]}"
else
  echo "No new version updates"
  exit 0
fi
