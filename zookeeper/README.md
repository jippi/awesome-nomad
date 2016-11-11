# Awesome NOMAD - Fleet Manager

# Nomad job spec files (.hcl)

## Zookeeper

### Description
Deploy a standalone Zookeeper docker instance or a Zookeeper ensemble cluster

### Instructions
Modify the following fields in zookeeper.hcl

-  Region
``` region = "<REGION>" ```

-  Datacenters
``` datacenters = [ "<DC_NAME>"] ```

- Docker Registry and Image details
```
config {
    image = "<DOCKER_IMAGE_NAME>"
    auth {
        username = "<DOCKER_REGISTRY_USER>"
        password = "<DOCKER_REGISTRY_PASSWORD>"
    }
```

- Resources stanza
```
resources {
    cpu = 100
    memory = 128
    network {
        mbits = 5
        ...
        ...
        ...
```

- Run ``` zookeeper.hcl ```
   ``` $ nomad run zookeeper.hcl ```
