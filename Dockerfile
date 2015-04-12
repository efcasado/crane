FROM       debian:7.4
MAINTAINER Enrique Fernandez <efcasado@gmail.com>

RUN apt-get update && \
    apt-get install -y \
        openssh-server && \
    rm -rf /var/lib/apt/lists/*