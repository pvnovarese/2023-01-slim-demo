FROM docker.io/pvnovarese/ubi8-minimal:latest

RUN date > /image_build_timestamp
