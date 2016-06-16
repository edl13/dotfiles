FROM ubuntu:14.04

MAINTAINER Mark Palmeri <mlp6@duke.edu>

RUN apt-get update \
    && apt-get install -y cabal-install \
    && cabal update \
    && cabal install shellcheck
