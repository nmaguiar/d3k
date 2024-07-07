# d3k

In container docker and multi-node kubernetes (k3d).

## New Linux/Windows and Macs:

> Linux >= 5.8.x

### With included socks proxy

```bash
docker run --rm -ti -p 127.0.0.1:10080:1080 --privileged --cgroupns=host nmaguiar/d3k /bin/bash
```

### With included ssh server

```bash
docker run --rm -ti -d -p 127.0.0.1:2222:22 --privileged --cgroupns=host nmaguiar/d3k
```

## Old Linux/Windows:

> Linux < 5.8.x

### With included socks proxy

```bash
docker run --rm -ti -p 127.0.0.1:10080:1080 --privileged nmaguiar/d3k /bin/bash
```

### With included ssh server

```bash
docker run --rm -ti -d -p 127.0.0.1:2222:22 --privileged nmaguiar/d3k
```
