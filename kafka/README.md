# Awesome NOMAD - Fleet Manager

# Nomad job spec files (.hcl)

## Kafka

### Description
Deploy a standalone Kafka docker instance or a Kafka cluster

### Instructions
Modify the following fields in kafka.hcl

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

- Run ``` kafka.hcl ```
   ``` $ nomad run kafka.hcl ```
