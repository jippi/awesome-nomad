# Awesome Nomad

A curated list of amazingly awesome Nomad tools and shiny things.

Pull requests with additional tools and projects are more than welcome!

## User interfaces

- [hashicorp/damon](https://github.com/hashicorp/damon) - An early stage terminal dashboard for Nomad.
- [robinovitch61/wander](https://github.com/robinovitch61/wander) - A terminal UI for Nomad.

## Autoscaling

- [hashicorp/nomad-autoscaler](https://github.com/hashicorp/nomad-autoscaler/) - HashiCorp's official Nomad Autoscaler. Supports scaling allocations within Nomad and scaling nodes on AWS, Azure, GCP, or arbitrary infrastructure via plugins.
- [lucretius/nomad-elastigroup-autoscaler](https://github.com/lucretius/nomad-elastigroup-autoscaler) - Nomad Autoscaler plugin for [Spot.io Elastigroup](https://spot.io/products/elastigroup/).

## CI / CD

- [getnelson/nelson](https://getnelson.io/) - Lights-out deployment and lifecycle manager for Nomad (and other pluggable schedulers). Fully integrated with Vault and Consul. Optionally can act as a control plane for your traffic routing teir.
- [jenkinsci/nomad-plugin](https://github.com/jenkinsci/nomad-plugin) - Jenkins plugin to allow using Nomad Jobs to scale out Jenkins build slaves.
- [hashicorp/levant](https://github.com/hashicorp/levant) - A templating and deployment tool for HashiCorp Nomad jobs that provides realtime feedback and detailed failure messages upon deployment issues.
- [hashicorp/setup-nomad-pack](https://github.com/marketplace/actions/setup-hashicorp-nomad-pack) - HashiCorp-maintained GitHub Action for `nomad-pack`.
- [nomad-ops/nomad-ops](https://github.com/nomad-ops/nomad-ops) - A simple way to deploy workloads via GitOps. Similar to ArgoCD with a UI.
- [sunshard-prism/prism-nomad)](https://github.com/sunshard-prism/prism-nomad) - Prism is a tool that simplifies the creation of Nomad job configuration templates and deploys them to a remote cluster.

## Plugins

- [CarbonCollins/nomad-usb-device-plugin](https://gitlab.com/CarbonCollins/nomad-usb-device-plugin) - A USB device plugin for nomad deployments.
- [Deuxfleurs/nomad-driver-nix2](https://git.deuxfleurs.fr/Deuxfleurs/nomad-driver-nix2) - A driver to run Nix jobs on Nomad.
- [JanMa/nomad-driver-nspawn](https://github.com/JanMa/nomad-driver-nspawn) - A nomad task driver to run containers with [systemd-nspawn](https://www.freedesktop.org/software/systemd/man/systemd-nspawn.html).
- [Roblox/nomad-driver-containerd](https://github.com/Roblox/nomad-driver-containerd) - A nomad task driver for [containerd](https://containerd.io). Documentation on [`nomadproject.io`](https://www.nomadproject.io/docs/drivers/external/containerd).
- [Roblox/nomad-driver-iis](https://github.com/Roblox/nomad-driver-iis) - A nomad task driver to run [windows IIS](https://www.iis.net/) tasks.
- [sorenisanerd/nomad-docker-driver-external](https://github.com/sorenisanerd/nomad-docker-driver-external) - External version of the docker driver for Nomad.

## Self Service

- TODO

## Job Files and Packs

- [hashicorp/nomad-pack-community-registry](https://github.com/hashicorp/nomad-pack-community-registry) - The official community registry for Nomad Pack templates.
- [perrymanuk/hashi-homelab](https://github.com/perrymanuk/hashi-homelab) Job files for a small lightweight homelab based on nomad and consul from hashicorp.

## Utilities

- [axsuul/nomad-event-streamer](http://github.com/axsuul/nomad-event-streamer) - A tool for sending Nomad events to your favorite destinations like Discord and Slack.
- [ngine-io/chaotic](https://github.com/ngine-io/chaotic) - Chaos monkey with integrated nomad support. Runs as batch job or service and kills allocations periodically and randomly.
- [jsiebens/hashi-up](https://github.com/jsiebens/hashi-up) - A lightweight utility to install Nomad (and other HashiCorp tools) on any remote Linux host.
- [let-sh/nomad-deploy-result-action](https://github.com/let-sh/nomad-deploy-result-action) - A GitHub action for automating Nomad deploys with GitOps.
- [koyeb/kreconciler](https://github.com/koyeb/kreconciler) - A library for building operators and reconcilers on top of Nomad (or other schedulers).
- [Roblox/nomad-node-problem-detector](https://github.com/Roblox/nomad-node-problem-detector) - A tool used to detect problems on Nomad nodes based on user-defined health checks.
- [hashicorp/nomad-pack](https://github.com/hashicorp/nomad-pack) - An official templating tool and package manager for Nomad, currently a Tech Preview.
- [dmaes/nomad-logger](https://github.com/dmaes/nomad-logger) - Watch Nomad allocations and update logshipper config.

## Tutorials

- [anubhavmishra/envoy-consul-sds](https://github.com/anubhavmishra/envoy-consul-sds) - A tutorial on how to get Envoy running on Nomad and using Envoy's SDS(Service Discovery Service) to access Consul API.
- [kelseyhightower/hashiconf-eu-2016](https://github.com/kelseyhightower/hashiconf-eu-2016) - Repo from a talk on building out a deployment with GCE/Consul/Nomad/Fabio loadbalancer. Check out the talk on youtube: https://www.youtube.com/watch?v=Nosa5-xcATw

## Examples / Demos

- [pete0emerson/hashipoc](https://github.com/pete0emerson/hashipoc) - A Vagrant driven example of getting Consul / Vault / Nomad up and running with a sample app deployed
- [fhemberger/nomad-demo](https://github.com/fhemberger/nomad-demo) - Vagrant based demo setup for running Hashicorp Consul, Nomad and Vault, including sample apps for Docker, JRE and a basic monitoring setup. Uses Traefik as load balancer to pick up services directly from Consul catalog.

## Other

- [prabirshrestha/synology-nomad](https://github.com/prabirshrestha/synology-nomad) - HashiCorp Nomad Package for Synology DSM 7+. Includes client and server.
