#FROM alpine:latest
FROM docker.io/redhat/ubi9-minimal:latest

LABEL maintainer="pvn@novarese.net"
LABEL name="2023-01-slim-demo"
LABEL org.opencontainers.image.title="2023-01-slim-demo"
LABEL org.opencontainers.image.description="Simple image to test various policy rules with Anchore Enterprise."

HEALTHCHECK --timeout=10s CMD /bin/true || exit 1

COPY log4j-core-2.14.1.jar /

### alpine-based
#RUN set -ex && \
#    apk add curl ruby && \
#    gem install ftpd:0.2.1 && \
#    curl -sSfL https://anchorectl-releases.anchore.io/anchorectl/install.sh | sh -s -- -b /usr/local/bin 

### rhel-based
RUN set -ex && \
    microdnf -y install ruby tar gzip && \
    curl -sSfL  https://anchorectl-releases.anchore.io/anchorectl/install.sh  | sh -s -- -b $HOME/.local/bin && \
    gem install ftpd:0.2.1 && \
    microdnf -y clean all && \
    rm -rf /var/cache/yum /tmp 

    
    

## just to make sure we have a unique build each time 
RUN date > /image_build_timestamp

USER nobody
ENTRYPOINT /bin/false
