# Surfer Dude - A friendly bot with local surf spot knowladge
[![CircleCI](https://circleci.com/gh/Smotko/surfer-dude.svg?style=svg)](https://circleci.com/gh/Smotko/surfer-dude)

## Deployment Instructions

```bash
# 1. Get the login token
$ docker-compose run --service-ports deploy firebase login:ci
$ cp docker-compose.override.yml{.example,}
$ vim docker-compose.override.yml # Add env variables
$ docker-compose up deploy
```

## Running tests

```bash
# Run tests in watch mode
$ docker-compose up test
```
