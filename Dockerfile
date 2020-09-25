FROM ubuntu:18.04

ARG ARCH_AMD64

RUN apt-get -qq update \
  && apt-get install -qq --yes --no-install-recommends mydumper:${ARCH_AMD64} \
  && apt-get -qq clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/bash"]