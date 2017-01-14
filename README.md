# docker-mysteryshack
Dockerfile for `untitaker/mysteryshack`

# Build

```bash
git clone https://github.com/kapolos/docker-mysteryshack.git
cd docker-mysteryshack
docker build -t "yourtaghere" .
```

# Example usage

```bash
# Create a named volume
docker volume create --name mysteryshack

# Create a user
docker run --rm -it \
  -v mysteryshack:/data kapolos/mysteryshack \
  bash -c 'cd /opt/mysteryshack/target/release/ ; ./mysteryshack user create admin'

# Serve
docker run -d --restart=unless-stopped \
  -p 6767:6767
  -v mysteryshack:/data kapolos/mysteryshack \
  bash -c 'cd /opt/mysteryshack/target/release/ ; ./mysteryshack serve'
```
