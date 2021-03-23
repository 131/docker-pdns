[![Image pulls](https://img.shields.io/docker/pulls/131hub/pdns)](https://hub.docker.com/r/131hub/pdns)
[![Image version](https://img.shields.io/docker/v/131hub/pdns)](https://hub.docker.com/r/131hub/pdns)
[![Image size](https://img.shields.io/docker/image-size/131hub/pdns)](https://hub.docker.com/r/131hub/pdns)


# Motivation
[`131hub/pdns`](https://hub.docker.com/r/131hub/pdns) is a **docker image** bringing [powerdns recursor](https://docs.powerdns.com/recursor/settings.html) and [auth server](https://doc.powerdns.com/authoritative/settings.html) in a single container.

All current powerdns container are far too complex to deploy. This one aims to be simple and efficient.

This [`131hub/pdns`](https://hub.docker.com/r/131hub/pdns) deploys a
* powerdns-recursor (exposed as 53)
* powerdns-auth server (exposed through the API)


Service configuration is made through `docker config`, awaiting a full pdns.conf and recursor.conf. No weird env var interpolation / secret leaking here.



# Usage
1. Craft a `docker service file.yml` using the [examples](https://github.com/131/docker-pdns/tree/master/examples) folder, refers to  [powerdns recursor config](https://docs.powerdns.com/recursor/settings.html) and [powerdns auth server config](https://doc.powerdns.com/authoritative/settings.html)
2. Spin your stack
3. Enjoy



# Credits
* [131](https://github.com/131)
* Works fine with [`ngoduykhanh/powerdns-admin`](https://hub.docker.com/r/ngoduykhanh/powerdns-admin)

