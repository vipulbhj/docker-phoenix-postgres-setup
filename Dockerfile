FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \ 
      build-essential \
      software-properties-common \
      git \
      wget \
      curl \
      rlwrap \
      locales \
      inotify-tools

# Set the locale
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

# Erlang Installation steps
RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && \
    dpkg -i erlang-solutions_2.0_all.deb && \
    apt-get update -y && apt-get install -y esl-erlang elixir && \
    rm erlang-solutions_2.0_all.deb

RUN mix local.hex --force

WORKDIR /home
