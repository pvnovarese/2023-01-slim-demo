# 2022-07-slimline-demo 

[![Anchore Weekly](https://github.com/pvnovarese/2022-07-slim-demo/actions/workflows/anchore-weekly.yaml/badge.svg)](https://github.com/pvnovarese/2022-07-slim-demo/actions/workflows/anchore-weekly.yaml)

Simple demo for Anchore Enterprise, including both Jenkins and GitHub workflow examples.

Partial list of conditions that can be tested with this image:

1. simulated AWS access key in `/aws_access`
2. simulated ssh private key in `/ssh_key`
3. `/log4j-core-2.14.1.jar` (CVE-2021-44228, et al)
4. added anchorectl to demonstrate automatic go module detection (new in syft 0.42.0)
