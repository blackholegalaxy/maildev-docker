FROM node:6-alpine

LABEL maintainer="blackholegalaxy"

RUN npm i -g maildev

ENTRYPOINT ["maildev"]
CMD ["--web", "1080", "--smtp", "25"]