FROM node:6-alpine

LABEL maintainer="blackholegalaxy"

RUN npm i -g maildev

EXPOSE 1080 25

ENTRYPOINT ["maildev"]
CMD ["--web", "1080", "--smtp", "25"]