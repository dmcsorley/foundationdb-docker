I wanted a foundationdb installation that I could run in a container.

To build:

    make

To run:

    docker run -it --rm dmcsorley/foundationdb-docker bash

Inside the container:

    service foundationdb start
    fdbcli

I also installed the python library so that's available to experiment with.

TODO:

- start the service on `docker run`
- bind the service to a host other than `127.0.0.1` so you can connect from outside the container
- tail the service log to stdout so it can be aggregated by standard docker logging tools

