FROM docker.io/redhat/ubi8-minimal:latest

RUN date > /image_build_timestamp
