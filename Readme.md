# Stunnel packaged in Docker container

A quick and dirty proxy hack to support legacy TLSv1.0 app.

I use it as part of a larger docker-compose stack to perform certain tasks.

e.g. Migrating really old Mercurial repo. to git - see [mercurial-to-git-migrate-container](https://github.com/klo2k/mercurial-to-git-migrate-container)

## Build and Publish

```bash
# Build and push "ubuntu-18.04" tag
docker build \
  --file ./ubuntu-18.04.dockerfile \
  --label org.opencontainers.image.revision="$(git rev-parse HEAD)" \
  --tag "klo2k/stunnel:ubuntu-18.04" .
docker push klo2k/stunnel:ubuntu-18.04
```
