
# Jupyter Notebook with SQL Kernel

## Origin

Derived from [Docker Minimal Notebook](https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook)

## What it Gives You

* Jupyter Notebook 4.1.x
* Conda Python 3.x
* No preinstalled scientific computing packages
* Unprivileged user `jovyan` (uid=1000, configurable, see options) in group `users` (gid=100) with ownership over `/home/jovyan` and `/opt/conda`
* [tini](https://github.com/krallin/tini) as the container entrypoint and [start-notebook.sh](./start-notebook.sh) as the default command
* Options for HTTPS, password auth, and passwordless `sudo`

## Basic Use

The following command starts a container with the Notebook server listening for HTTP connections on port 8888 without authentication configured.

```
docker run -d -p 8888:8888 jupyter/minimal-notebook
```

## Notebook Options

[Docker Minimal Notebook](https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook)