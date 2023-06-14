<div align="center">
	<p>
		<img alt="CircleCI Logo" src="https://raw.github.com/CircleCI-Public/cimg-postgres/main/img/circle-circleci.svg?sanitize=true" width="75" />
		<img alt="Docker Logo" src="https://raw.github.com/CircleCI-Public/cimg-postgres/main/img/circle-docker.svg?sanitize=true" width="75" />
		<img alt="PostgreSQL Logo" src="https://raw.github.com/CircleCI-Public/cimg-postgres/main/img/circle-postgres.svg?sanitize=true" width="75" />
	</p>
	<h1>CircleCI Convenience Images => PostgreSQL</h1>
	<h3>A Continuous Integration focused PostgreSQL Docker image built to run on CircleCI</h3>
</div>

[![CircleCI Build Status](https://circleci.com/gh/CircleCI-Public/cimg-postgres.svg?style=shield)](https://circleci.com/gh/CircleCI-Public/cimg-postgres) [![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/CircleCI-Public/cimg-postgres/master/LICENSE) [![Docker Pulls](https://img.shields.io/docker/pulls/cimg/postgres)](https://hub.docker.com/r/cimg/postgres) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/circleci-images) [![Repository](https://img.shields.io/badge/github-README-brightgreen)](https://github.com/CircleCI-Public/cimg-postgres)

***This image is designed to supercede the legacy CircleCI PostgreSQL image, `circleci/postgres`.***

`cimg/postgres` is a Docker image created by CircleCI with continuous integration builds in mind.

## Support Policy

The CircleCI Docker Convenience Image support policy can be found on the [CircleCI docs](https://circleci.com/docs/convenience-images-support-policy) site. This policy outlines the release, update, and deprecation policy for CircleCI Docker Convenience Images.

## Table of Contents

- [Getting Started](#getting-started)
- [How This Image Works](#how-this-image-works)
- [Development](#development)
- [Contributing](#contributing)
- [Additional Resources](#additional-resources)
- [License](#license)


## Getting Started

This image can be used with the CircleCI `docker` executor as a secondary image.
For example:

```yaml
jobs:
  build:
    docker:
      - image: cimg/go:1.17
      - image: cimg/postgres:13.2
    steps:
      - checkout
```

In the above example, the CircleCI Go Docker image is used for the primary container while the PostgreSQL image is used as a secondary.
More specifically, the tag `13.2` is used meaning the version of PostgreSQL will be v13.2.
You can now connect to a PostgreSQL instance from the primary image within the steps for this job.


## How This Image Works

This image contains the PostgreSQL database and its complete toolchain.

### Variants

Variant images typically contain the same base software, but with a few additional modifications.

#### PostGIS

The PostGIS variant is the same PostgreSQL image but with PostGIS (and its several dependencies) pre-installed.
The PostGIS variant can be used by appending `-postgis` to the end of an existing `cimg/postgres` tag.

```yaml
jobs:
  build:
    docker:
      - image: cimg/go:1.17
      - image: cimg/postgres:13.1-postgis
    steps:
      - checkout
      - run: echo "Do things"
```

#### RAM

The legacy version of this image, `circleci/postgres` had a RAM variant.
This is no longer the case.
We're determining how much of a performance increase does this variant actually give before we decide to bring it back.
If you used the legacy PostgreSQL image and you have data on the ram vs non-ram variant build times, please open a GitHub Issue and let us know.


### Tagging Scheme

This image has the following tagging scheme:

```
cimg/postgres:<pg-version>
```

`<pg-version>` - The version of PostgreSQL to use.


## Development

Images can be built and run locally with this repository.
This has the following requirements:

- local machine of Linux (Ubuntu tested) or macOS
- modern version of Bash (v4+)
- modern version of Docker Engine (v19.03+)

### Cloning For Community Users (no write access to this repository)

Fork this repository on GitHub.
When you get your clone URL, you'll want to add `--recurse-submodules` to the clone command in order to populate the Git submodule contained in this repo.
It would look something like this:

```bash
git clone --recurse-submodules <my-clone-url>
```

If you missed this step and already cloned, you can just run `git submodule update --recursive` to populate the submodule.
Then you can optionally add this repo as an upstream to your own:

```bash
git remote add upstream https://github.com/CircleCI-Public/cimg-postgres.git
```

### Cloning For Maintainers ( you have write access to this repository)

Clone the project with the following command so that you populate the submodule:

```bash
git clone --recurse-submodules git@github.com:CircleCI-Public/cimg-postgres.git
```

### Generating Dockerfiles

Dockerfiles can be generated for a specific PostgreSQL version using the `gen-dockerfiles.sh` script.
For example, to generate the Dockerfile for v13.2, you would run the following from the root of the repo:

```bash
./shared/gen-dockerfiles.sh 13.2
```

The generated Dockerfile will be located at `./13.2/Dockefile`.
To build this image locally and try it out, you can run the following:

```bash
docker build -f 13.2/Dockerfile -t test/postgres:13.2 .
docker run -it test/postgres:13.2 bash
```

### Building the Dockerfiles

To build the Docker images locally as this repository does, you'll want to run the `build-images.sh` script:

```bash
./build-images.sh
```

This would need to be run after generating the Dockerfiles first.
When releasing proper images for CircleCI, this script is run from a CircleCI pipeline and not locally.

## Configuration

Because some configurations for postgres are enabled at runtime, it is difficult if not impossible to change certain settings.
As a result, we've provided a configuration file within this repository that allows you to import certain properties that can support your use case. This is located at the project root under `custom-postgres.conf`, however, you would be able to supply a custom configuration file yourself. In doing so, you would also need to specify this file when running the docker container.

For example, in the `.circleci/config.yml`, we are using it with this command; specifically, the "postgres -c 'config_file=xxx'" addition.

Please note there are additions to this file, such as `shared_preload_libraries` that may not be needed.

```bash
docker run --rm --env POSTGRES_USER=user --env POSTGRES_PASSWORD=passw0rd -p 5432:5432 -d $IMAGE postgres -c 'config_file=/etc/postgresql/postgresql.conf'
```


For additional resources on how to configure, you would be able to visit [this link](https://github.com/docker-library/docs/blob/master/postgres/README.md#database-configuration) for additional details.


### Publishing Official Images (for Maintainers only)

The individual scripts (above) can be used to create the correct files for an image, and then added to a new git branch, committed, etc.
A release script is included to make this process easier.
To make a proper release for this image, let's use the fake PostgreSQL version of v9.99, you would run the following from the repo root:

```bash
./shared/release.sh 9.99
```

This will automatically create a new Git branch, generate the Dockerfile(s), stage the changes, commit them, and push them to GitHub.
The commit message will end with the string `[release]`.
This string is used by CircleCI to know when to push images to Docker Hub.
All that would need to be done after that is:

- wait for build to pass on CircleCI
- review the PR
- merge the PR

The main branch build will then publish a release.

### Incorporating Changes

How changes are incorporated into this image depends on where they come from.

**build scripts** - Changes within the `./shared` submodule happen in its [own repository](https://github.com/CircleCI-Public/cimg-shared).
For those changes to affect this image, the submodule needs to be updated.
Typically like this:

```bash
cd shared
git pull
cd ..
git add shared
git commit -m "Updating submodule for foo."
```

**parent image** - By design, when changes happen to a parent image, they don't appear in existing PostgreSQL images.
This is to aid in "determinism" and prevent breaking customer builds.
New Go images will automatically pick up the changes.

If you *really* want to publish changes from a parent image into the PostgreSQL image, you have to build a specific image version as if it was a new image.
This will create a new Dockerfile and once published, a new image.

Extensions in the parent image will **not** have extensions enabled by default. This should be done by the user. Please refer to respective README's on how to enable, but the general idea would be to create a `*.sql` file in `/docker-entrypoint-initdb.d/` along with custom configurations, which can be referred to in the configurations section of the README

**PostgreSQL specific changes** - Editing the `Dockerfile.template` file in this repo will modify the PostgreSQL image specifically.
Don't forget that to see any of these changes locally, the `gen-dockerfiles.sh` script will need to be run again (see above).


## Contributing

We encourage [issues](https://github.com/CircleCI-Public/cimg-postgres/issues) and [pull requests](https://github.com/CircleCI-Public/cimg-postgres/pulls) against this repository.

Please check out our [contributing guide](.github/CONTRIBUTING.md) which outlines best practices for contributions and what you can expect from the images team at CircleCI.

## Additional Resources

[CircleCI Docs](https://circleci.com/docs/) - The official CircleCI Documentation website.
[CircleCI Configuration Reference](https://circleci.com/docs/2.0/configuration-reference/#section=configuration) - From CircleCI Docs, the configuration reference page is one of the most useful pages we have.
It will list all of the keys and values supported in `.circleci/config.yml`.
[Docker Docs](https://docs.docker.com/) - For simple projects this won't be needed but if you want to dive deeper into learning Docker, this is a great resource.

## Credit

This repository uses upstream resources from the Docker library, specifically, the [docker-entrypoint](https://github.com/docker-library/postgres/blob/master/docker-entrypoint.sh)

## License

This repository is licensed under the MIT license.
The license can be found [here](./LICENSE).
