# Build and push a Convertigo MBaaS with projects to Heroku

## Requirement
 * heroku-cli
 * docker

## How to use it ?

### Setup projects
Put your builded Convertigo <project>.car in the `projects` folder. They will be deployed along Convertigo MBaaS as an Heroku web process. You can deploy one convertigo project by Heroku process or share an Heroku process for several Convertigo projects.

This can be integrated in a CI to deploy production Convertigo MBaaS on Heroku

- Get Convertigo project from GIT
- ZIP the directory
- Rename .ZIP file to .CAR file
- Copy project.car in project folder
- Launch `heroku container:push` to push Convertigo MBaaS + Projects on Heroku

### Setting configuration
Tweak extra configuration in the `heroku-entrypoint.sh`. You can configure here the

- couchdb_url		: a valid CouchDB server for FullSync repository (Optional) 
- couchdb_username	: The CouchDB server username 
- couchdb_password	: The CouchDB server password

These settings are mandatory only if you want to use Convertigo OffLine data FullSync technology capabilities

### Login

	$ heroku container:login

### Publish

	$ heroku container:push
