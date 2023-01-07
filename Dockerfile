FROM alpine:latest

LABEL maintainer="pvn@novarese.net"
LABEL name="2023-01-slim-demo"
LABEL org.opencontainers.image.title="2023-01-slim-demo"
LABEL org.opencontainers.image.description="Simple image to test various policy rules with Anchore Enterprise."

HEALTHCHECK --timeout=10s CMD /bin/true || exit 1

COPY log4j-core-2.14.1.jar /

RUN set -ex && \
    apk add curl ruby && \
    gem install ftpd:0.2.1 && \
    curl -sSfL https://anchorectl-releases.anchore.io/anchorectl/install.sh | sh -s -- -b /usr/local/bin v1.3.0 

## just to make sure we have a unique build each time 
RUN date > /image_build_timestamp

USER nobody
ENTRYPOINT /bin/false
