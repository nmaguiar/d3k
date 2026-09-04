# d3k usage

Welcome to the d3k image. In-container docker and a multi-node Kubernetes (K3D), ready to learn and experiment with. Check the deployment options below and the getting started tips further down.

---

## 🐧 New Linux/Windows and Macs (Linux kernel >= 5.8.x)

**With included socks proxy:**

{{{$acolor 'FAINT,ITALIC' 'docker run --rm -ti -p 127.0.0.1:10080:1080 --privileged --cgroupns=host -e NOSSH=true nmaguiar/d3k /bin/bash'}}}

**With included ssh server:**

{{{$acolor 'FAINT,ITALIC' 'docker run --rm -ti -d -p 127.0.0.1:2222:22 --privileged --cgroupns=host nmaguiar/d3k'}}}

---

## 🐢 Old Linux/Windows (Linux kernel < 5.8.x)

**With included socks proxy:**

{{{$acolor 'FAINT,ITALIC' 'docker run --rm -ti -p 127.0.0.1:10080:1080 --privileged -e NOSSH=true nmaguiar/d3k /bin/bash'}}}

**With included ssh server:**

{{{$acolor 'FAINT,ITALIC' 'docker run --rm -ti -d -p 127.0.0.1:2222:22 --privileged nmaguiar/d3k'}}}

---

## 🚀 Getting started

> Once the container is running execute the built-in ```status.js``` command to check when docker and Kubernetes are ready to use (this happens automatically at login too).

Any docker containers you start, any Kubernetes deployments you apply or any helm chart you install only affect this container, so this is your "playground" to learn and experiment. If you ever need to go back to how it was in the beginning, just restart the container.

### 🏆 Launching your first Kubernetes deployment

```bash
kubectl create deploy my-first --image=nginx
kubectl get pods
```

Repeat the last command until you see the STATUS "Running", then expose it:

```bash
kubectl expose deploy my-first --port 80
kubectl get services
```

You will see two services: "kubernetes" (from K3D) and your own "my-first", on port 80. To quickly prove it's working, from inside the container:

```bash
curl http://my-first.default --proxy socks5h://localhost:1080
```

### 🖥️ Checking it out from your desktop browser

> This requires the container to have been started with the included socks proxy (see above) and port 1080 mapped, e.g. to 10080. Adjust the port number below accordingly.

If your __host is a Windows machine__ open a Windows Command Prompt and execute:

```
curl https://ojob.io/win/newChrome.bat -O newChrome.bat
newChrome.bat d3k localhost:10080
```

If your __host is a Mac machine__ open a Mac OS Terminal and execute:

```bash
curl https://ojob.io/mac/newChrome.sh | sh -s d3k localhost:10080
```

If your __host is a Linux machine__ open a terminal window and execute:

```bash
curl https://ojob.io/unix/newChrome.sh | sh -s d3k localhost:10080
```

Now open [http://my-first.default](http://my-first.default) in the browser you just configured to use the socks proxy. &#x1F973;

> If you are an advanced user and don't want to use Chrome just configure Firefox or your browser of choice to use a socks 5 proxy on address 127.0.0.1, port 10080, and ensure all DNS traffic is proxied too.

### 😎 Now a database (Helm)

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install postgresql bitnami/postgresql
kubectl get pods
kubectl get services
```

There are instructions on the terminal on how to get the "postgres" user password and connect to the database. If you don't have it already, install [DBeaver community edition](https://dbeaver.io/download/) on your desktop and configure a new PostgreSQL connection:

* _Host_ -- "postgresql.default.svc" (the Kubernetes service)
* _Port_ -- 5432
* _Username_ -- "postgres"
* _Password_ -- run ```echo PASS = $(kubectl get secret --namespace default postgresql -o jsonpath="{.data.postgres-password}" | base64 -d)``` and use the result

Before testing the connection configure the proxy on the "Proxy" tab: enable "Use Proxy", "Host" as "localhost" and "Port" as "10080" (or whatever host port you mapped port 1080 to). Now you can test and finish the connection setup.

### 🍀 Feeling lucky? (Advanced, multi-node)

Create an extra cluster with 3 nodes, a load balancer on port 8080 and its own container registry:

```bash
k3d cluster create test -s 3 -p "8080:8080@loadbalancer" --k3s-arg "--snapshotter=native@server:*" --registry-create registry2:0.0.0.0:5500
kubectl get nodes
```

Deploy a DaemonSet (one pod per node) with a load-balanced service in front of it:

```bash
kubectl apply -f - <<__EOF
apiVersion: apps/v1
kind: DaemonSet
metadata:
  labels:
    app: my-echo
  name: my-echo
spec:
  selector:
    matchLabels:
      app: my-echo
  template:
    metadata:
      labels:
        app: my-echo
    spec:
      containers:
      - image: openaf/oaf
        name: oaf
        env:
        - name: OJOB
          value: ojob.io/httpServers/EchoHTTPd
        - name: port
          value: "8080"
        readinessProbe:
          httpGet:
            path: /
            port: 8080

---

apiVersion: v1
kind: Service
metadata:
  labels:
    app: my-echo
  name: my-echo
spec:
  type: LoadBalancer
  ports:
  - port: 8080
    protocol: TCP
    targetPort: 8080
  selector:
    app: my-echo
__EOF
kubectl get daemonsets
kubectl get pods
kubectl get services
```

Once at least one pod is running, hit the load balancer a few times:

```bash
curl http://127.0.0.1:8080
```

Check the "serverHost" and "serverHostname" fields change as requests get load-balanced across the 3 nodes. Explore more Kubernetes concepts (StatefulSets, Jobs, CronJobs, Ingress, ...) at [Kubernetes basics](https://kubernetes.io/docs/tutorials/kubernetes-basics/).

To clean up the extra cluster when you're done:

```bash
k3d cluster delete test
```

---

## 🛠️  Utils available in this image

| Utility | Use for |
|---------|---------|
| docker | Docker client/daemon to build and run containers |
| k3d | Minimalist Kubernetes distribution running on top of docker |
| kubectl | Client to interact with the K3D Kubernetes cluster |
| helm | The most popular Kubernetes package manager |
| docker-compose | Define and run multi-container docker applications |
| skopeo | Copy from/to container registries, archive files and from/to the docker daemon |
| openaf | A "swiss-army knife" devops tool & runtime |
| colorFormats.yaml | Changes/checks the current terminal color theme (uses OpenAF's oJob) |
| vscTunnel.yaml | Downloads and helps start a Visual Studio Code tunnel from this container (uses OpenAF's oJob) |

---

## 🔧  Other commands and aliases

| Type | Executable | Description |
|------|------------|--------------|
| Alias | help | Shows the image version and main instructions |
| Alias | oaf-light-theme | Sets the openaf/oafp command output to a light screen theme |
| Alias | oaf-dark-theme | Sets the openaf/oafp command output to a dark screen theme |
| Alias | oafptab | Parses the stdin input ascii table into an ascii table with oafp query functionality |
| Command | status.js | Waits/reports on docker and Kubernetes readiness |
| Command | usage-help | Displays this usage help |

---
