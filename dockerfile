FROM debian:buster

RUN apt-get update && apt-get -y upgrade && apt-get install -y vim && apt-get install -y clang && apt-get install libc6-dev

COPY ./srcs /home

ENTRYPOINT ["bash"]
