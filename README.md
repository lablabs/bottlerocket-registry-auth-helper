# bottlerocket-registry-auth-helper
[<img src="https://lablabs.io/static/ll-logo.png" width=350px>](https://lablabs.io/)

We help companies build, run, deploy and scale software and infrastructure by embracing the right technologies and principles. Check out our website at <https://lablabs.io/>

---

## Description
Custom AWS bottlerocket Docker image repository. For interaction with AWS secret manager

Extra functionality:
- AWS CLI
- jq

## Usage
Docker image used in bootstrap container to interact with AWS. As argument it takes json file where secret ID and AWS region is specified. Bootstrap container then load data from
AWS secret manager to bottlerocket configuration. One of the use cases is load credentials data for registry mirror.

Argument passed for correct usage:

`{"config":{"awsregion":"AWSREGION","awssecretid":"AWSSECRETID"}}`


Data stored in AWS secret has format accepted by bottlerocket apiclient. i.e.

`{"container-registry":{"credentials":[{"registry":"docker.io","username":"someusername","password":"somepassword"}]}}`


Available images are located here https://github.com/lablabs/bottlerocket-registry-auth-helper/pkgs/container/bottlerocket-registry-auth-helper.
- Specific released version:
```shell
ghcr.io/lablabs/bottlerocket-registry-auth-helper:<$release-version>
```

## Tagging strategy
- PR
  - `pr<$PR-number>`, e.g. `pr2`
  - `<$commit-sha>`, e.g. `23523572395472943572934552452352`
- main
  - `<$release-version>` it is taken from tag name created

## How to update
1. Make other changes you want
2. Create a PR.
3. When merged, create tag.

## Contributing
Check [.github/CONTRIBUTING.md](.github/CONTRIBUTING.md) for guideline on how to contribute.

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
