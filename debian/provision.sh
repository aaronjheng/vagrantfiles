#!/bin/bash

set -ex

version=stretch

cat > /etc/apt/sources.list << SOURCES
deb http://mirrors.aliyun.com/debian/ $version main contrib
deb-src http://mirrors.aliyun.com/debian/ $version main contrib

deb http://mirrors.aliyun.com/debian-security/ $version/updates main contrib
deb-src http://mirrors.aliyun.com/debian-security/ $version/updates main contrib

deb http://mirrors.aliyun.com/debian/ $version-updates main contrib
deb-src http://mirrors.aliyun.com/debian/ $version-updates main contrib

deb http://mirrors.aliyun.com/debian/ $version-backports main contrib
deb-src http://mirrors.aliyun.com/debian/ $version-backports main contrib
SOURCES

apt-get update && apt-get install -y vim
update-alternatives --set editor /usr/bin/vim.basic
