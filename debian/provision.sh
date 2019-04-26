#!/bin/bash
set -e

dist=stretch

cat > /etc/apt/sources.list << SOURCES
deb http://mirrors.aliyun.com/debian/ $dist main contrib
deb-src http://mirrors.aliyun.com/debian/ $dist main contrib

deb http://mirrors.aliyun.com/debian-security/ $dist/updates main contrib
deb-src http://mirrors.aliyun.com/debian-security/ $dist/updates main contrib

deb http://mirrors.aliyun.com/debian/ $dist-updates main contrib
deb-src http://mirrors.aliyun.com/debian/ $dist-updates main contrib
SOURCES

apt-get update && apt-get install -y vim
update-alternatives --set editor /usr/bin/vim.basic
