#!/bin/bash

set -e

dist=buster

cat >/etc/apt/sources.list <<SOURCES
deb https://mirrors.aliyun.com/debian/ $dist main contrib
deb-src https://mirrors.aliyun.com/debian/ $dist main contrib

deb https://mirrors.aliyun.com/debian-security/ $dist/updates main contrib
deb-src https://mirrors.aliyun.com/debian-security/ $dist/updates main contrib

deb https://mirrors.aliyun.com/debian/ $dist-updates main contrib
deb-src https://mirrors.aliyun.com/debian/ $dist-updates main contrib
SOURCES

apt-get update && apt-get install -y vim
update-alternatives --set editor /usr/bin/vim.basic
