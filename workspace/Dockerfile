FROM phusion/baseimage:latest
USER root


RUN apt-get install -y software-properties-common

RUN apt-get update && \
    apt-get install -y --force-yes \
        vim \
        git \
        tmux \
    && apt-get clean



# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

