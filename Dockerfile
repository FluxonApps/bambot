FROM debian:bookworm-slim

SHELL ["/bin/bash", "--login", "-c"]

RUN apt update && yes | apt install git curl

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
RUN nvm install 10

RUN mkdir /bot && cd bot && git clone https://github.com/FluxonApps/bambot

RUN cd /bot/bambot && npm install

COPY entrypoint.sh /bot
RUN chmod a+x /bot/entrypoint.sh

ENTRYPOINT [ "/bot/entrypoint.sh" ]
