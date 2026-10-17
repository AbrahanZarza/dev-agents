# Dev Agents

![Docker](https://img.shields.io/badge/Docker-latest-blue)

Dev Agents is a lightweight tooling set that lets you run AI coding agents inside an isolated Docker container, right from any directory on your machine.

Instead of installing and polluting your host system with a separate runtime for each agent, this project packages them into a single Docker image and exposes a simple wrapper command per agent. When you invoke one of them, the directory you are currently in becomes the agent's *workspace* and is mounted into the container, while the host filesystem stays separated and untouched.

Agent configuration and data are persisted under the `.agents/` folder so your setup survives between runs. New agents can be added over time, so the list of supported commands keeps growing.

## How to start

### Prerequisites

You only need to have [Docker](https://docs.docker.com/get-docker/) (or [Docker Desktop](https://www.docker.com/products/docker-desktop/)) installed on your host machine.

### Installation

Clone or download this repository:

```bash
cd YOUR_DIR
git clone https://github.com/AbrahanZarza/dev-agents.git
```

Once it is downloaded, move to the project folder and run the initial setup:

```bash
cd dev-agents
make setup
```

Add the following line to your `$PATH` definition file (on macOS it is typically `~/.zshrc`):

```
export PATH="YOUR_DIR/dev-agents:$PATH"
```

Next, reload the configuration file:

```bash
source ~/.zshrc # (or similar file)
```

## How to use

Once the project is installed, each supported agent is exposed as its own command. Run it in any directory you want to work in, and **that directory will become the agent's workspace**.

### Available agents

The following agents are available today. More will be added over time:

| Command | Agent |
| --- | --- |
| `opencode` | [opencode](https://opencode.ai) |
| `claude` | [Claude Code](https://claude.ai) |

### Example

```bash
cd ~/projects
opencode # or claude
```

The chosen agent will run with the `~/projects` folder as its main *workspace*. This is because we use a _Docker_ image that runs your agents in a _container_ separate from your host OS filesystem.
