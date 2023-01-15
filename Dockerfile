FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

COPY scripts/install.sh /tmp

RUN chmod +x /tmp/install.sh \
    && sh /tmp/install.sh

RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz \
    && tar -xf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

RUN mv wkhtmltox/bin/wkhtmltopdf /usr/local/bin \
    && mv wkhtmltox/bin/wkhtmltoimage /usr/local/bin \
    && chmod +x /usr/local/bin/wkhtmltopdf \
    && chmod +x /usr/local/bin/wkhtmltoimage

ENTRYPOINT ["wkhtmltopdf"]
