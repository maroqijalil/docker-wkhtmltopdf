# docker-wkhtmltopdf
Repo for wkhtmltopdf docker image based on Ubuntu OS


## Execution
You can run the container for directly executing wkhtmltopdf command on your local.

```
docker run --network host maroqijalil/docker-wkhtmltopdf:<tagname> https://google.com - > output.pdf
```
> Using the tag `--network host` in that example ensures that the behavior should be as expected as executing wkhtmltopdf in the local machine.


## Extending
Create your image with this image as the starting point for custom usage, you can use the following template:

```
FROM maroqijalil/docker-wkhtmltopdf:0.12.4-ubuntu-18.04 AS wkhtmltopdf
FROM ubuntu:18.04

COPY --from=wkhtmltopdf /tmp/install.sh /tmp/install.sh

RUN chmod +x /tmp/install.sh \
    && sh /tmp/install.sh

COPY --from=wkhtmltopdf /usr/local/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf
COPY --from=wkhtmltopdf /usr/local/bin/wkhtmltoimage /usr/local/bin/wkhtmltoimage

...
```
> Add the rest of your build command also the entrypoint.
