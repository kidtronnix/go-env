FROM ubuntu:16.04
# FROM nvidia/cuda:9.1-cudnn7-devel-ubuntu16.04

RUN apt-get update
RUN apt-get install -y \
 wget \
 curl \
 g++ \
 git \
 make \
 python-dev \
 python-pip \
 python3-pip \
 sudo \
 software-properties-common

RUN apt-add-repository ppa:neovim-ppa/stable && apt-get update && apt-get install -y neovim

RUN mkdir /installs
RUN cd /installs && \
wget https://storage.googleapis.com/golang/go1.9.7.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.9.7.linux-amd64.tar.gz

ENV GOPATH /go
ENV GOBIN /go/bin
ENV PATH /usr/local/go/bin:/go/bin:$PATH
ENV HOME /root
WORKDIR /go/src

RUN go version

RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN pip3 install neovim

COPY nvimrc /root/.config/nvim/init.vim

RUN alias vim='nvim'
RUN nvim +'silent :PlugInstall'  +qall

