# docker-mysteryshack
Dockerfile for `untitaker/mysteryshack`

# Build

```bash
git clone https://github.com/kapolos/docker-mysteryshack.git
cd docker-mysteryshack
docker build -t "yourtaghere" .
```

# (or) Pull

If you don't want to build it, pull my image:

`docker pull kapolos/mysterysh`

## Example usage

```
# Create a named volume
docker volume create --name mysteryshack

# Create a user
docker run --rm -it -v mysteryshack:/data kapolos/mysteryshack bash -c 'cd /opt/mysteryshack/target/release/ ; ./mysteryshack user create admin'

# Set password
docker run --rm -it -v mysteryshack:/data kapolos/mysteryshack bash -c 'cd /opt/mysteryshack/target/release/ ; ./mysteryshack user setpass admin'

# Serve
docker run --rm -it -v mysteryshack:/data kapolos/mysteryshack bash -c 'cd /opt/mysteryshack/target/release/ ; ./mysteryshack serve'
```
