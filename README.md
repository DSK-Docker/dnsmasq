# Description
Docker image for dnsmasq.

# Usage
```Docker
docker create \
  --name=dnsmasq \
  -e TIMEZONE=<<TIMEZONE|default(UTC)>> \
  -v path to dnsmasq.conf:/etc/dnsmasq.conf \
  --restart unless-stopped \
  --net host
  dschinghiskahn/dnsmasq
```
