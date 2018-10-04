from ubuntu:bionic

RUN apt-get update && apt-get install -y git build-essential gcc

WORKDIR /usr/src

RUN git clone https://github.com/The-4n/4NXCI.git

WORKDIR /usr/src/4NXCI

RUN /bin/bash -c "cp config.mk{.template,}"

RUN make

RUN mv 4nxci /usr/bin

RUN mkdir -p /mnt/filedir

VOLUME ["/mnt/filedir"]

WORKDIR /mnt/filedir

ENTRYPOINT ["4nxci"]

CMD []
