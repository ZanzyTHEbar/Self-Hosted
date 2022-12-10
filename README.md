# Self-Hosted


## What is this?

This is a collection of docker services for running a self-hosted HomeLab. It is based on docker images. It is designed to be run on a single server, but can be easily modified to run on multiple servers.

Everything is easily modifyable and customizable. You can easily add or remove services, change the ports, and change the passwords. You can also easily add your own services.

This is a work in progress. I will be adding more services and improving the documentation as I go.

## How do I use it?

### Prerequisites

* A server running Ubuntu `18.04`, `20.04`, or `22.04`,
* A domain name pointing to your server, configured in the `.env` files,
* A static IP address for your server, ideally configured in your router's DHCP settings,
* A user with `sudo` privileges on your server

### Setup

1. Clone this repository to your server.
2. Modify the `.env` files to your liking.
3. Run [setup.sh](/scripts/setup.sh) to install dependancies and spin up the containers.
4. Modify the `docker-compose.yml` and `.env` files to your liking.

### Updating

Containers can be updated by navigating to the directory containing the `docker-compose.yml` file and running `docker-compose pull` and `docker-compose up -d`.

The `docker-compose up -d` command will update the containers, but will not update the `.env` files. Sometimes you may need to run `docker-compose down` and `docker-compose up -d` to update the data files.

### Adding Services

This config uses `traefik` as a reverse proxy. To add a service, you need to add a new `docker-compose.yml` file to its unique directory. You can use the current services as a template.
