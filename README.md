# docker-wkhtmltopdf
Repo for wkhtmltopdf docker image based on Ubuntu OS

## Execution
You can run the container for directly executing wkhtmltopdf command on your local.

```
docker run --network host maroqijalil/docker-wkhtmltopdf:<tagname> https://google.com - > output.pdf
```
> Using the tag `--network host` in that example ensures that the behavior should be as expected as executing wkhtmltopdf in the local machine.
