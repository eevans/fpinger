#!/bin/sh

set -e

`dirname $0`/fpinger `dirname $0`/hosts.txt |curl -D - -X POST -H "Content-Type: application/json" -d @- http://0.0.0.0:8080/samples
