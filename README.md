# 2022-06-enterprise-demo 

[![Anchore Weekly](https://github.com/pvnovarese/2022-06-enterprise-demo/actions/workflows/anchore-weekly.yaml/badge.svg)](https://github.com/pvnovarese/2022-06-enterprise-demo/actions/workflows/anchore-weekly.yaml) [![Drift Detection Demo](https://github.com/pvnovarese/2022-06-enterprise-demo/actions/workflows/drift-demo-setup.yaml/badge.svg)](https://github.com/pvnovarese/2022-06-enterprise-demo/actions/workflows/drift-demo-setup.yaml) [![Codefresh build status]( https://g.codefresh.io/api/badges/pipeline/novarese/default%2F2022-06-demo?type=cf-1&key=eyJhbGciOiJIUzI1NiJ9.NjBiNmI3NmU2OTg1ODM3ZmU2ODZiNmE5.WZIffzq3OQPvPXy6pn1TbA4z9fMsdlS1U_cliZXbxKg)]( https://g.codefresh.io/pipelines/edit/new/builds?id=6293a486fa2ae7111b571a27&pipeline=2022-06-demo&projects=default&projectId=60b6b7aa4417e4bd7d843d0f)

Simple demo for Anchore Enterprise, including both Jenkins and GitHub workflow examples.

Partial list of conditions that can be tested with this image:

1. xmrig cryptominer installed at `/xmrig/xmrig`
2. simulated AWS access key in `/aws_access`
3. simulated ssh private key in `/ssh_key`
4. selection of commonly-blocked packages installed (sudo, curl, etc)
5. `/log4j-core-2.14.1.jar` (CVE-2021-44228, et al)
6. CVE-2021-3156 (sudo) provided via hints file (rpm also available)
7. added anchorectl to demonstrate automatic go module detection (new in syft 0.42.0)
8. wide variety of ruby, node, python, java installed with different licenses
