# Awesome Nomad

A curated list of amazingly awesome Nomad tools and shiny things.

## User interfaces

- [jippi/hashi-ui](https://github.com/jippi/hashi-ui) - Interface for Consul & Nomad by HashiCorp, live stream of data, fast search and resource visualization per cluster or client. 
- [cvandal/nomad-ui](https://github.com/cvandal/nomad-ui) - A UI for Nomad by HashiCorp.
- [chuyskywalker/nomad-ui](https://github.com/chuyskywalker/nomad-ui) - A basic, linkable, fast Nomad UI.

## Auto Scalers

- [underarmour/libra](https://github.com/underarmour/libra) - Scale Nomad task group counts based on external metrics Graphite or AWS CloudWatch.

## CI / CD

- [verizon/nelson](https://verizon.github.io/nelson/) - Lights-out deployment and lifecycle manager for Nomad (and other plugable scheudlers). Fully integrated with Vault and Consul. Optionally can act as a control plane for your traffic routing teir.
- [jenkinsci/nomad-plugin](https://github.com/jenkinsci/nomad-plugin) - Jenkins plugin to allow using Nomad Jobs to scale out Jenkins build slaves.

## Self Service

- [FRosner/cluster-broccoli](https://github.com/FRosner/cluster-broccoli) - Cluster Broccoli is a RESTful web service + UI to manage Nomad jobs through a self service application. Jobs are defined based on templates, allowing for a selectable amount of customization.

## Job files

- [jrasell/nomadfiles](https://github.com/jrasell/nomadfiles)

## Utilities 

- [seatgeek/nomad-helper](https://github.com/seatgeek/nomad-helper) - Simple helper binary to allow you to reevaluate all jobs, drain an node (and wait for all allocations to stop), force a garbage collection, export / import job task group counts in YAML format.
- [seatgeek/nomad-firehose](https://github.com/seatgeek/nomad-firehose) - Go binary that "tails" API endpoints and emit messages for each changed resource to RabbitMQ, AWS kinesis or stdout.
- [seatgeek/nomad-crashloop-detector](https://github.com/seatgeek/nomad-crashloop-detector) - Consuming the RabbitMQ output from seatgeek/nomad-firehose, will detect when allocations restart too fast or too often, outputing the offending allocation to RabbitMQ, AWS Kinesis or stdout.
- [sepulworld/deadman-check](https://github.com/sepulworld/deadman-check) - A monitoring companion for Nomad periodic jobs that alerts if periodic isn't running at the expected interval.
- [bsd/nomad-watcher](https://github.com/bsd/nomad-watcher) - A simple service that watches Nomad's nodes, jobs, allocations, and evaluations, and writes the events to a file.
