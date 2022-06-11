# This Dockerfile constructs a minimal environment in which Grain programs can be compiled.
# The environment is only meant to build Grain programs, not develop the compiler.

FROM ghcr.io/grain-lang/grain:latest-slim

USER root

RUN groupadd --gid 33333 gitpod && \
  useradd -m --shell /bin/bash -g gitpod -u 33333 gitpod && \
  chown -R gitpod:gitpod /grain

USER gitpod