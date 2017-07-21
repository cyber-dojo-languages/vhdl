FROM  cyberdojofoundation/ubuntu-build-essential:14.04
LABEL maintainer=pablo.mansanet@bluefruit.co.uk

RUN apt-get update
RUN apt-get install --yes software-properties-common
RUN add-apt-repository ppa:pgavin/ghdl
RUN apt-get update
RUN apt-get install --yes ghdl
