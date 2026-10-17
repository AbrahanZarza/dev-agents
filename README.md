# Dev Agents

![Docker](https://img.shields.io/badge/Docker-latest-blue)

TODO: description

## How to start

### Prerequisites

You only need to have [Docker](https://docs.docker.com/get-docker/) (or [Docker Desktop](https://www.docker.com/products/docker-desktop/)) installed on your host machine.

### Installation

Clone or download this repository

```bash
cd YOUR_DIR
git clone https://github.com/AbrahanZarza/dev-agents.git
```

Once it is downloaded, move to the project folder and execute the first setup
```bash
cd dev-agents
make setup
```

Add the following line to your `$PATH` definition file (on Mac OS is typically `~/.zshrc`)
```
export PATH="YOUR_DIR/dev-agents:$PATH"
```

Next, reload the configuration file
```bash
source ~/.zshrc # (or similar file)
```

## How to use

Once the project is installed, you can execute `opencode` or `claude` commands at all directories that you want
to work. The current directory where you are will be the *workspace* for the agent that you want to invoke.

#### Example:

```bash
cd ~/projects
opencode # or claude
```

The *opencode* agent will run with `~/projects` folder like main *workspace*. This is because we use a _Docker_ image
that runs your agents in a separated _container_ of your base OS filesystem. 
