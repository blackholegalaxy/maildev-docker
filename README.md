# MailDev docker version

[![Build Status](https://travis-ci.org/blackholegalaxy/maildev-docker.svg?branch=master)](https://travis-ci.org/blackholegalaxy/maildev-docker)
[![Docker Pulls](https://img.shields.io/docker/pulls/blackholegalaxy/maildev.svg?maxAge=8600)][hub]

[hub]: https://hub.docker.com/r/blackholegalaxy/maildev/

[MailDev](https://github.com/djfarrelly/MailDev) docker image with CLI commands support.

## MailDev CLI usage

```
maildev [options]

  -h, --help                      output usage information
  -V, --version                   output the version number
  -s, --smtp <port>               SMTP port to catch emails [1025]
  -w, --web <port>                Port to run the Web GUI [1080]
  --ip <ip address>               IP Address to bind SMTP service to
  --outgoing-host <host>          SMTP host for outgoing emails
  --outgoing-port <port>          SMTP port for outgoing emails
  --outgoing-user <user>          SMTP user for outgoing emails
  --outgoing-pass <password>      SMTP password for outgoing emails
  --outgoing-secure               Use SMTP SSL for outgoing emails
  --auto-relay [email]            Use auto-relay mode. Optional relay email address
  --auto-relay-rules <file>       Filter rules for auto relay mode
  --incoming-user <user>          SMTP user for incoming emails
  --incoming-pass <pass>          SMTP password for incoming emails
  --web-ip <ip address>           IP Address to bind HTTP service to, defaults to --ip
  --web-user <user>               HTTP user for GUI
  --web-pass <password>           HTTP password for GUI
  --base-pathname <path>          base path for URLs
  --disable-web                   Disable the use of the web interface. Useful for unit testing
  --hide-extensions <extensions>  Comma separated list of SMTP extensions to NOT advertise
                                  (STARTTLS, SMTPUTF8, PIPELINING, 8BITMIME)
  -o, --open                      Open the Web GUI after startup
  -v, --verbose
  --silent
```

## Default docker image usage

You can run following command to run maildev with default settings:
  - SMTP port set to `25`, mounted on `1025`
  - HTTP port set to `1080`

```
$ docker run -p 1080:1080 -p 1025:25 --name maildev blackholegalaxy/maildev -w 8888 --outgoing-host anyhost --outgoing-port 587
```

## Use CLI in docker

By default, MailDev docker will run with the following arguments:
```
--web 1080 --smtp 25
```

You can use any CLI argument using the following syntax:

```
$ docker run -p 1080:8888 --name maildev blackholegalaxy/maildev -w 8888 --outgoing-host anyhost --outgoing-port 587
```

