# Docker Doxygen

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)

Dockerfile to build a container image enclosing [Doxygen](http://www.doxygen.org/).

## Usage

``` shell
cd /path/to/source
docker run --rm -v $(pwd):/data -it rmeharg/doxygen doxygen
```

## Rebuild Image

```
curl -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": "master"}' -X POST https://hub.docker.com/api/build/v1/source/f9bb1e13-5ba6-457e-8ee9-a72fe6386ab1/trigger/028edbab-2959-448c-a2b5-2e3d0ac7916d/call/
```
