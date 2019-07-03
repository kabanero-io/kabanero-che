# Kabanero Assembly for Che

Assembly for Kabanero branded version of Che

[![Eclipse License](https://img.shields.io/badge/license-Eclipse-brightgreen.svg)](https://www.eclipse.org/legal/epl-2.0/)

## Build

`$ mvn clean install`

This creates the main assembly in `assembly/main/target/kabanero-che-assembly-main`

## Package

`$ docker build --force-rm -t kabanero-che .`

This creates the `kabanero-che` docker image

> You can also use the provided `build.sh` script to build and package in one step.

## Installing on Kabanero

Prerequisites: Kabanero on Kubernetes (see the [requirements](https://github.com/kabanero-io/roadmap/blob/master/README.md#kabanero-foundation-in-a-kubernetes-cluster-prerequisites))

Follow the instructions [here](https://www.eclipse.org/codewind/installoncloud.html) to setup a Codewind-ready install of Che, but with one difference:

At step #3 under the section "Setting up OKD and OpenShift", replace the command

`Deploy Che with ./deploy_che.sh`

With

`Deploy Che with ./deploy_che.sh --image-che=kabanero-che:latest`

## References

This repo is created based on the following:

- https://github.com/che-samples/che-ide-server-extension
- https://github.com/redhat-developer/codeready-workspaces

## Contributing

We welcome submitting issues and contributions.

1. [Submitting bugs](https://github.com/kabanero-io/kabanero-che/issues)
2. [Contributing](CONTRIBUTING.md)

## License

[EPL 2.0](https://www.eclipse.org/legal/epl-2.0/)