# NATS Streaming Server on Kubernetes

This project contains a [Docker image](https://hub.docker.com/r/canhnt/nats-streaming-server/) and a Helm chart to run NATS Streaming Server in the Kubernetes cluster.
The NATS Streaming Server can run in [fault tollerance mode](https://github.com/nats-io/nats-streaming-server#fault-tolerance)

## Requirements
- Kubernetes v1.8.0 or later.
- A NFS instance like Amazon EFS or Google Gluster.

## Syntax
Build Helm chart
```
make helm
```

## Helm chart options

| Keys              | Default | Description                                                           |
| ----------------- | ------- |-----------------------------------------------------------------------|
| image             | 'docker.io/canhnt/nats-streaming-server:v0.6.0'  | Docker image to deploy |
| imagePullPolicy   | 'IfNotPresent'  |  |
| replicas          | 3  | Number of nats-streaming replicas  |
| storageSize       | 1Gi  | Storage size of the share volume between nats-streaming replicas  |
| pv.serverUrl      | 'FAKED'  | URL of the NFS instance |
