FROM debian:bookworm-slim

LABEL maintainer="sentisso <sentisso.dev@protonmail.comer>"
LABEL repository="https://github.com/sentisso/docker-activitywatch"

RUN apt-get update && apt-get install -y ca-certificates unzip wget \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app

RUN wget -q https://github.com/ActivityWatch/activitywatch/releases/download/v0.13.2/activitywatch-v0.13.2-linux-x86_64.zip \
  && unzip ./activitywatch*.zip \
  && rm ./activitywatch*.zip \
  && chmod +x ./activitywatch/aw-server-rust/aw-server-rust

RUN apt-get purge -y ca-certificates unzip wget \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*


EXPOSE 5600
SHELL ["/bin/bash", "-c"]
CMD ["/app/activitywatch/aw-server-rust/aw-server-rust", "--host", "0.0.0.0"]
