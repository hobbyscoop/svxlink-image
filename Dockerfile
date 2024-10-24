FROM ubuntu:latest
RUN apt update && apt install -y libssl-dev # https://github.com/sm0svx/svxlink/pull/682
ADD *.deb /
RUN dpkg -i *.deb
RUN apt install -f -y
