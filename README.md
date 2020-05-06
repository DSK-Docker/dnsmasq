# Description
Docker image for dnsmasq.

# Usage
```Docker
docker create \
  --name=dnsmasq \
  -p 53:53 \
  -p 53:53/udp \
  -p 67:67/udp \
  -v path to dnsmasq.conf:/etc/dnsmasq.conf \
  --restart unless-stopped \
  dschinghiskahn/dnsmasq
```
