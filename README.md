# Mikrotik RouterOS in Docker

This extrasmall image was created for tests purpose only.

## How to use

### Build from sources

For this you need download project and build everything from scratch:

```bash
git clone https://github.com/webruslanmir/docker-routeros.git
cd docker-routeros
docker compose up -d
```

Now you can connect to your RouterOS container via VNC protocol
(on localhost 5900 port) and via SSH (on localhost 2222 port).

## List of exposed ports

    ports:
      - "12222:22"    # SSH 
      - "12223:23"    # Telnet
      - "18728:8728"  # RouterOS API (without SSL)
      - "18729:8729"  # RouterOS API-SSL
      - "18291:8291"  # WinBox 

