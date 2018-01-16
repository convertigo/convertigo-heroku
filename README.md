# Build and push a Convertigo to Heroku

## Requirement
 * heroku-cli
 * docker

## How to use it ?

### Setup projects
Put your builded <project>.car in the `projects` folder.

### Setting configuration
Tweak extra configuration in the `heroku-entrypoint.sh`.

### Login

	heroku container:login

### Publish

	heroku container:push
