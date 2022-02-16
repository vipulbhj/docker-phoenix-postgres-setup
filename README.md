# Docker Setup for Phoenix Framework

This repo contains my docker config, I use for initalizing Phoenix projects.

## Setup

Most of the required tools are already installed, you will need to initialise project, or mount it appropriately. You will need to change the `WORKDIR` in `Dockerfile`, so when `docker-compose` runs `mix phx.server`, it will be in the right directory and will be able to find the needed files.
