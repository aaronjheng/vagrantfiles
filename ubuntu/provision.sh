#!/bin/bash

set -ex

version=xenial

cat > /etc/apt/sources.list << SOURCES
deb http://mirrors.aliyun.com/ubuntu/ $version main universe
deb-src http://mirrors.aliyun.com/ubuntu/ $version main universe

deb http://mirrors.aliyun.com/ubuntu/ $version-security main universe
deb-src http://mirrors.aliyun.com/ubuntu/ $version-security main universe

deb http://mirrors.aliyun.com/ubuntu/ $version-updates main universe
deb-src http://mirrors.aliyun.com/ubuntu/ $version-updates main universe

deb http://mirrors.aliyun.com/ubuntu/ $version-backports main universe
deb-src http://mirrors.aliyun.com/ubuntu/ $version-backports main universe
SOURCES

apt update && apt install -y vim
update-alternatives --set editor /usr/bin/vim.basic
