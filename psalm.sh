#!/bin/sh

docker run -v $PWD:/app --rm -it ghcr.io/danog/psalm:latest /composer/vendor/bin/psalm --no-cache