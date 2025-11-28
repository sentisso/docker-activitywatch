# aw-server-docker

`aw-server-rust` server running in an up-to-date Docker.

## Setup

1. Install ActivityWatch (`aw-qt`) on your machine, see https://docs.activitywatch.net/en/latest/getting-started.html#installation (for watchers etc.)
2. Make sure that `aw-server` is not autostarted by `aw-qt`. This can be configured in the `~/.config/activitywatch/aw-qt/aw-qt.toml` file by excluding it from the `autostart_modules` option (see an example of the `aw-qt.toml` file in this repo).
3. Update the local paths in `docker-compose.yml` volumes to match your actual home folder (`/home/<user>/..`). Or set it to whatever, I did it like this to maximize compatibility with a locally installed `aw-server`.
4. `docker compose up -d` 🎉

## Updates

To update the AW server, just manually replace the version inside `Dockerfile` and rebuild the container (`docker compose up -d --build`).

Sidenote: Personally, I prefer defining the downloaded version manually instead of trying to hack the download script to always download the latest version. Although, the current setup could be improved for example with an `.env` file defining the downloaded version, but that's not at the top of my priority list currently.
