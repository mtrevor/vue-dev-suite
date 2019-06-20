# Vue Devkit

 * Javascript framework: [Vue.js](https://vuejs.org)
 * Command-line tools: [Vue CLI](https://cli.vuejs.org)
 * Package manager: [Yarn](https://yarnpkg.com)
 * Test framework: [Jest](https://jestjs.io)
 * Test management UI: [majestic](https://majestic.debuggable.io)
 * Prototyping: [Storybook](https://storybook.js.org)
 
## Setup

In your Vue project folder, add a `.env` file with the following:
```
COMPOSE_FILE=<path to the clone of this repo's docker-compose.yml>
VUE_PROJECT_PATH=<path to Vue project folder>
```

This lets you call the `docker-compose` commands from any location inside that folder.


## Quick start a new project

A quick setup script is included which uses a [default preset](docker/home_node_dot-vuerc.json):
```bash
docker-compose run cli bash -c ". /docker/vue-create.sh"
```
**Storybook is not included as part of this setup at this time**


## Using the packaged tools 
Commands can be called by connecting to a shell:
```bash
docker-compose run cli bash
```

Or directly from the command line:
```bash
docker-compose run cli bash -c "yarn install"
```

The default user is `node`, but it's possible to get access to a `root` shell if needed:
```bash
docker-compose run --user root cli bash
``` 

**The `docker-compose run` command does not bind any ports.** If you need to be able to access the instance 
externally at this time, use `docker-compose up` with one of the open services (see the 
[docker-compose.yml](./docker-compose.yml) for which services use what ports) and then `docker-compose exec <service> bash` 
to connect to it.

## Starting development

```bash
docker-compose up               # start all development services

docker-compose up vue           # run Vue development server
docker-compose up majestic      # run Majestic testing server
docker-compose up storybook     # run Storybook prototyping server
```
