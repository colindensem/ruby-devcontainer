# ruby-devcontainer
VS Code dev container for a new sinatra project within vscode as a devcontainer

Clone the repository, copy `.env.example` to `.env` & then open the folder in VS Code. You should now be prompted to open in a container.

```
git clone https://github.com/colindensem/vscode-dev-container-sinatra/
```

Once the container is built, there is a prompt to run `init-container.sh` script, this can perform whatever tasks you desire, initally it will do a bundle install.

The project comes with a simple sinatra app and rspec. It uses a couple of gems to load settings and runs under the puma webserver via foreman.
The devcontainer also includes an additional service, in the form of redis. This is included to illustrate one way to do it.

From the now in container vscode panel, open a new terminal, using the binstubs in bin, you can do

`rspec`

To launch the app

`foreman start`

Open a browser to `localhost:5000`

## Requirements

* docker
* vs code
  * remote containers extension

## Next steps?
To make it your own, you'll want to rename the `SinatraApp` and `sinatra-app` references, tweak the config and alike.

There is a gem included, `figaro` that makes local application config management from env vars easier.

`config/settings.yml` includes public, known attributes. This file is included in git.
`config/application.yml` includes private, unknown attributes. This file is not included in git.
