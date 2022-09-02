# 2022-07-slimline-demo 

[![Example Enterprise Workflow](https://github.com/pvnovarese/2022-07-slim-demo/actions/workflows/example-enterprise.yaml/badge.svg)](https://github.com/pvnovarese/2022-07-slim-demo/actions/workflows/example-enterprise.yaml) 
[![Example Local Scan/SBOM Workflow](https://github.com/pvnovarese/2022-07-slim-demo/actions/workflows/example_local.yaml/badge.svg)](https://github.com/pvnovarese/2022-07-slim-demo/actions/workflows/example_local.yaml) 
[![Codefresh build status]( https://g.codefresh.io/api/badges/pipeline/novarese/default%2F2022-07-slim?type=cf-1&key=eyJhbGciOiJIUzI1NiJ9.NjBiNmI3NmU2OTg1ODM3ZmU2ODZiNmE5.WZIffzq3OQPvPXy6pn1TbA4z9fMsdlS1U_cliZXbxKg)]( https://g.codefresh.io/pipelines/edit/new/builds?id=62e311cbebf477595d60ad6b&pipeline=2022-07-slim&projects=default&projectId=60b6b7aa4417e4bd7d843d0f)
[![pvnovarese](https://circleci.com/gh/pvnovarese/2022-07-slim-demo.svg?style=shield)](https://github.com/pvnovarese/2022-07-slim-demo)

Simple demo for Anchore Enterprise, including both Jenkins and GitHub workflow examples.

Partial list of conditions that can be tested with this image:

1. simulated AWS access key in `/aws_access`
2. simulated ssh private key in `/ssh_key`
3. `/log4j-core-2.14.1.jar` (CVE-2021-44228, et al)
4. added anchorectl to demonstrate automatic go module detection (new in syft 0.42.0)
