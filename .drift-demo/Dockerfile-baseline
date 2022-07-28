FROM alpine:latest

LABEL maintainer="pvn@novarese.net"
LABEL name="2022-07-slimline-demo"
LABEL org.opencontainers.image.title="2022-07-slimline-demo"
LABEL org.opencontainers.image.description="Simple image to test various policy rules with Anchore Enterprise."

HEALTHCHECK --timeout=10s CMD /bin/true || exit 1

##if you need to use the actual rpm rather than the hints file, use this COPY and comment out the other one
##COPY Dockerfile sudo-1.8.29-5.el8.x86_64.rpm ./
COPY log4j-core-2.14.1.jar /

RUN set -ex && \
    echo "aws_access_key_id=01234567890123456789" > /aws_access && \
    echo "-----BEGIN OPENSSH PRIVATE KEY-----" > /ssh_key && \
    apk add --no-cache curl && \
    curl https://anchorectl-releases.s3-us-west-2.amazonaws.com/v0.2.0/anchorectl_0.2.0_linux_amd64.tar.gz | tar xzvf - -C /usr/local/bin/ 

## just to make sure we have a unique build each time
RUN date > /image_build_timestamp

USER nobody
ENTRYPOINT /bin/false
