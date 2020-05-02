#!/bin/bash
set -e

dist=bionic

cat >/etc/apt/sources.list <<SOURCES
deb http://mirrors.aliyun.com/ubuntu/ $dist main universe
deb-src http://mirrors.aliyun.com/ubuntu/ $dist main universe

deb http://mirrors.aliyun.com/ubuntu/ $dist-security main universe
deb-src http://mirrors.aliyun.com/ubuntu/ $dist-security main universe

deb http://mirrors.aliyun.com/ubuntu/ $dist-updates main universe
deb-src http://mirrors.aliyun.com/ubuntu/ $dist-updates main universe
SOURCES

apt-get update && apt-get install -y vim
update-alternatives --set editor /usr/bin/vim.basic
