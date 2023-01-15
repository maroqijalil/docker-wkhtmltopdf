#!/bin/sh

apt-get update

apt-get install -y \
  wget \
  xz-utils \
  libx11-dev \
  libxrender-dev \
  libxext-dev \
  libssl1.0 \
  ca-certificates \
  fontconfig \
  libfreetype6 \
  fonts-droid-fallback \
  ttf-dejavu \
  fonts-freefont-ttf \
  fonts-liberation \
  ttf-ubuntu-font-family \
  ttf-mscorefonts-installer

fc-cache -f -v
