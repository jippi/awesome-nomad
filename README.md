# Awesome Nomad

A curated list of amazingly awesome Nomad tools and shiny things.

## User interfaces

- [jippi/hashi-ui](https://github.com/jippi/hashi-ui) - Interface for Consul & Nomad, live stream of data, fast search and resource visualization per cluster or client. 

## Auto Scalers

- [underarmour/libra](https://github.com/underarmour/libra)

## CI / CD

- [jenkinsci/nomad-plugin](https://github.com/jenkinsci/nomad-plugin) - Jenkins plugin to allow using Nomad Jobs to scale out Jenkins build slaves

## Utilities 

- [seatgeek/nomad-helper](https://github.com/seatgeek/nomad-helper) - Simple helper binary to allow you to reevaluate all jobs, drain an node (and wait for all allocations to stop), force a garbage collection, export / import job task group counts in YAML format
- [seatgeek/nomad-firehose](https://github.com/seatgeek/nomad-firehose) - Go binary that "tails" API endpoints and emit messages for each changed resource to RabbitMQ, AWS kinesis or stdout
- [seatgeek/nomad-crashloop-detector](https://github.com/seatgeek/nomad-crashloop-detector) - Consuming the RabbitMQ output from seatgeek/nomad-firehose, will detect when allocations restart too fast or too often, outputing the offending allocation to RabbitMQ, AWS Kinesis or stdout
