#!/bin/bash

set -e

dist=focal

cat >/etc/apt/sources.list <<SOURCES
deb https://mirrors.aliyun.com/ubuntu/ $dist main universe
deb-src https://mirrors.aliyun.com/ubuntu/ $dist main universe

deb https://mirrors.aliyun.com/ubuntu/ $dist-security main universe
deb-src https://mirrors.aliyun.com/ubuntu/ $dist-security main universe

deb https://mirrors.aliyun.com/ubuntu/ $dist-updates main universe
deb-src https://mirrors.aliyun.com/ubuntu/ $dist-updates main universe
SOURCES

apt-get update && apt-get install -y vim
update-alternatives --set editor /usr/bin/vim.basic
