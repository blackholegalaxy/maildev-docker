FROM node:10-alpine

LABEL maintainer="blackholegalaxy"

RUN npm i -g maildev@1.1.0

EXPOSE 1080 25

ENTRYPOINT ["maildev"]
CMD ["--web", "1080", "--smtp", "25"]
