#!/bin/bash

set -e

mvn clean install

docker build --force-rm -t kabanero-che .