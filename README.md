# Foundry VTT Docker

This is a container for [Foundry VTT](https://foundryvtt.com) for ease of setting up a server. Due to legal reasons with the license you have to manually provide the source code for Foundry VTT in a linked `/server` volume.

## Supported Registries

The currently supported container registries in descending preference are:

- [quay.io/aliciabytes/foundryvtt](https://quay.io/repository/aliciabytes/foundryvtt)
- [docker.io/alicanibbles/foundryvtt](https://hub.docker.com/repository/docker/alicianibbles/foundryvtt)

## Supported Tags

Currently only the `latest` tag is supported.

## Persistent Data

You might want to persist some of the data the SRB2Kart server uses on your host system through volumes.

### Data

This folder is mapped as a volume at `/data` and holds the game data. Make sure to regularly back up this folder.

### Server

This folder is mapped as a volume at `/server` and holds the code for Foundry VTT. Please make sure to unzip the source code there.

## Running With Podman

To run the server normally with podman, just execute

```sh
podman run --name foundryvtt -v /path/on/host/data:/data -v /path/on/host/server:/server -p 80:30000 aliciabytes/foundryvtt:latest
```
