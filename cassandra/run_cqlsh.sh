#!/bin/bash

docker run -it --rm --net="host" cassandra:3 sh -c "exec cqlsh $1"
