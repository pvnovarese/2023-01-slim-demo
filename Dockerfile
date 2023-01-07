FROM docker.io/redhat/ubi8-minimal:latest

LABEL maintainer="pvn@novarese.net"
LABEL name="2023-01-slim-demo"
LABEL org.opencontainers.image.title="2023-01-slim-demo"
LABEL org.opencontainers.image.description="Simple image to test various policy rules with Anchore Enterprise."

HEALTHCHECK --timeout=10s CMD /bin/true || exit 1

##if you need to use the actual rpm rather than the hints file, use this COPY and comment out the other one 
##COPY Dockerfile sudo-1.8.29-5.el8.x86_64.rpm ./
COPY log4j-core-2.14.1.jar /

RUN set -ex && \
    microdnf -y install ruby && \
    gem install ftpd:0.2.1 && \
    curl -sSfL https://anchorectl-releases.anchore.io/anchorectl/install.sh | sh -s -- -b /usr/local/bin v1.3.0 

## just to make sure we have a unique build each time 
RUN date > /image_build_timestamp

USER nobody
ENTRYPOINT /bin/false
