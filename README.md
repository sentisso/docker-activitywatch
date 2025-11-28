# aw-server-docker

`aw-server-rust` server running in an up-to-date Docker.

## Setup

1. Install ActivityWatch (`aw-qt`) on your machine, see https://docs.activitywatch.net/en/latest/getting-started.html#installation
2. Make sure that `aw-server` is not autostarted by `aw-qt`. This can be configured in the `~/.config/activitywatch/aw-qt/aw-qt.toml` file by excluding it from the `autostart_modules` option (see an example of this file in this repo).
3. Update the local paths in `docker-compose.yml` volumes to match your actual home folder (`/home/<user>/..`).
