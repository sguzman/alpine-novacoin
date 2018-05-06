FROM alpine
WORKDIR ~

RUN apk update
RUN apk add autoconf automake libtool curl-dev build-base
RUN wget https://github.com/pooler/cpuminer/archive/v2.5.0.tar.gz
RUN tar zxvf v2.5.0.tar.gz
WORKDIR cpuminer-2.5.0

RUN ./autogen.sh
RUN ./configure CFLAGS="-O6"
RUN make

