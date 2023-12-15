FROM node:18-alpine

RUN mkdir -p /bot/bambot

COPY . /bot/bambot/
RUN cd /bot/bambot && npm install
RUN chmod a+x /bot/bambot/entrypoint.sh

ENTRYPOINT [ "/bot/bambot/entrypoint.sh" ]
