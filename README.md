[![Build status](https://img.shields.io/docker/build/131hub/pdns)](https://hub.docker.com/r/131hub/pdns)
[![Image pulls](https://img.shields.io/docker/pulls/131hub/pdns)](https://hub.docker.com/r/131hub/pdns)


# Motivation
This is a docker image for powerdns recursor and auth server in a single container.

All current powerdns container are far too complex to deploy. This one aims to be simple and efficient.

This `131hub/pdns` help you deploy a
* powerdns-recursor (exposed as 53)
* powerdns-auth server (exposed through the API)


Service configuration is made through `docker config`, pushing 
pdns.conf (entierly) and recursor.conf (entierly).
No weird env var interpolation / secret leaking here.



# Usage
1) Craft a `docker service file.yml` using the [examples] folder .
2) Spin your stack 
3) Enjoy



# Credits
* [131](https://github.com/131)
* Works fine with `ngoduykhanh/powerdns-admin`

