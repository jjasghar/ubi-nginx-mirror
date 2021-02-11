# ubi-nginx-mirror

## Scope

This repository is for a Red Hat [UBI][ubi] image to host and mirror a specific file via `nginx`.

I streamed making this container [here](https://youtu.be/v44EmFfC6Ns).

## Usage

### Local testing

1. Clone down the repo
1. Run `docker build -t ubi-nginx-mirror .`
1. Run `docker run --rm -d -p 80:80 -p 443:443 -e URL_FILE=https://google.com/blank.html ubi-nginx-mirror`

### Running on k8s

1. Clone down the repo
1. Run `docker build -t quay.io/jjasghar/ubi-nginx-mirror .` **Note**: You probably want to push it to your own registry.
1. Edit the [deployment.yaml](k8s/ubi-nginx-mirror-deployment.yaml) with your container you built above, and change the `URL_FILE` to the file you want to mirror.
1. Run `kubectl apply -f k8s/ubi-nginx-mirror-deployment.yaml`

```text
Copyright:: 2021- IBM, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

[ubi]: https://catalog.redhat.com/software/containers/ubi8/ubi-minimal/5c359a62bed8bd75a2c3fba8?gti-tabs=unauthenticated
