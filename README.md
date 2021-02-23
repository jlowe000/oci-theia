## oci-theia

This was created to demonstrate a few things about Oracle Cloud Infrastructure in a "fun" way. There are different elements of the OCI that have been exercised that will be discussed here.

This borrows an open-source development environment to work with. The nice thing with Theia it allows a web-browser based development environment.

- Theia - https://theia-ide.org
- Theia (Docker) - https://hub.docker.com/u/theiaide
- Theia with Python (Docker) - https://hub.docker.com/r/theiaide/theia-python

We extended this to be running and deployable on OCI.

## Pre-Requisites

- Need an OCI Tenancy and this is built with a Always-Free Tier account in mind. However, has been deployed into another type of tenancy / compartment with limited access policies.
- Need an administrator access to the account (keeping it simple).

## Things To Know

- This deploys a single VM compute:
  - nginx docker image has been deployed for authentication (as Theia doesn't provide that out of the box). This includes the ability to do the basic authentication
  - theia-python docker image was chosen for this build
  - a docker network has been setup internally
  - exposing 8080 (http) / 8081 (https) from nginx which forwards to theia
