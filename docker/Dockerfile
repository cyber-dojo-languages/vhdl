FROM  cyberdojofoundation/ubuntu-build-essential:16.04
LABEL maintainer=pablo.mansanet@bluefruit.co.uk

RUN apt-get update \
 && apt-get install --no-install-recommends --yes \
  git \
  gnat \
  libz-dev \
 && git config --global http.sslVerify false \
 && git clone "https://github.com/ghdl/ghdl.git" ghdl \
 && cd ghdl \
 && ./configure --prefix=/usr/local \
 && make \
 && make install

RUN ghdl --version | grep -q 0.36