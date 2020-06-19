# Docker-Ruby Environment for HackerRank

## Overview
Deploy the local environmet to check the Ruby script for HackerRank.
Put your rb script next to the Dockerfile and execute it after build and run container.

## Ruby version
2.6.6

## Reference
- Docker Hub: Ruby > https://hub.docker.com/_/ruby

## How to run the test suite
Default image and container name are "ruby" and "ruby:2.6.6".
If you want to change the name of them, replace to your favorite name.

Following process makes Ruby Docker environment on your background.
After you put the Ruby script next to Dockerfile, you can execute Ruby scripts in the container.

```Build and Run Ruby image and container. Execute Ruby script.
$ docker build -t ruby .
$ docker run --name ruby -it -d -v "$PWD":/myapp -w /myapp ruby:2.6.6 /bin/bash
$ docker exec -it ruby bash
# ruby <RUBY-SCRIPT>.rb
```

In case you want to create or renew Gemfile.lock, execute:
``` Generate Gemfile
$ docker run --rm -v "$PWD":/myapp -w /myapp ruby:2.6.6 bundle install
```

***