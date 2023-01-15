FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y \
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
    ttf-ubuntu-font-family

RUN apt-get install -y \
    ttf-mscorefonts-installer \
    && fc-cache -f -v

RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz \
    && tar -xf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

RUN mv wkhtmltox/bin/wkhtmltopdf /usr/local/bin \
    && mv wkhtmltox/bin/wkhtmltoimage /usr/local/bin \
    && chmod +x /usr/local/bin/wkhtmltopdf \
    && chmod +x /usr/local/bin/wkhtmltoimage

ENTRYPOINT ["wkhtmltopdf"]
