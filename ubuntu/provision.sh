#!/bin/bash
set -e

version=xenial

cat > /etc/apt/sources.list << SOURCES
deb http://mirrors.aliyun.com/ubuntu/ $version main universe
deb-src http://mirrors.aliyun.com/ubuntu/ $version main universe

deb http://mirrors.aliyun.com/ubuntu/ $version-security main universe
deb-src http://mirrors.aliyun.com/ubuntu/ $version-security main universe

deb http://mirrors.aliyun.com/ubuntu/ $version-updates main universe
deb-src http://mirrors.aliyun.com/ubuntu/ $version-updates main universe
SOURCES

apt-get update && apt-get install -y vim
update-alternatives --set editor /usr/bin/vim.basic
