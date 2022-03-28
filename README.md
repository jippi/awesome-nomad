# Awesome Nomad

A curated list of amazingly awesome Nomad tools and shiny things.

Pull requests with additional tools and projects are more than welcome!

## User interfaces

- [jippi/hashi-ui](https://github.com/jippi/hashi-ui) - Interface for Consul & Nomad by HashiCorp, live stream of data, fast search and resource visualization per cluster or client.
- [hashicorp/damon](https://github.com/hashicorp/damon) - An early stage terminal dashboard for Nomad.

## Autoscaling

- [hashicorp/nomad-autoscaler](https://github.com/hashicorp/nomad-autoscaler/) - HashiCorp's official Nomad Autoscaler. Supports scaling allocations within Nomad and scaling nodes on AWS, Azure, GCP, or arbitrary infrastructure via plugins.
- [jrasell/chemtrail](https://github.com/jrasell/chemtrail) - Chemtrail is a client scaler for HashiCorp Nomad allowing for dynamic and safe scaling of the client workerpool based on demand.
- [jrasell/sherpa](https://github.com/jrasell/sherpa) - Sherpa is a job scaler for HashiCorp Nomad and aims to be highly flexible so it can support a wide range of architectures and budgets.
- [underarmour/libra](https://github.com/underarmour/libra) - Scale Nomad task group counts based on external metrics Graphite or AWS CloudWatch.
- [Spotinst](https://help.spotinst.com/hc/en-us/articles/115005038289-Nomad-Container-Management-) - SaaS Nomad Cluster autoscaler with option to run the clients on Spot Instances (AWS Only)
- [trivago/scalad](https://github.com/trivago/scalad) - Scalad is a nomad horizontal scaler that can be setup from each job Taskgroup meta stanza based on external metrics.
- [dkt26111/nomad-senlin-autoscale](https://github.com/dkt26111/nomad-senlin-autoscaler) - Nomad Autoscaler plugin for OpenStack Senlin.
- [jsiebens/nomad-droplets-autoscaler](https://github.com/jsiebens/nomad-droplets-autoscaler) - Nomad Autoscaler plugin for Digital Ocean droplets.
- [lucretius/nomad-elastigroup-autoscaler](https://github.com/lucretius/nomad-elastigroup-autoscaler) - Nomad Autoscaler plugin for [Spot.io Elastigroup](https://spot.io/products/elastigroup/).

## CI / CD

- [getnelson/nelson](https://getnelson.io/) - Lights-out deployment and lifecycle manager for Nomad (and other pluggable schedulers). Fully integrated with Vault and Consul. Optionally can act as a control plane for your traffic routing teir.
- [jenkinsci/nomad-plugin](https://github.com/jenkinsci/nomad-plugin) - Jenkins plugin to allow using Nomad Jobs to scale out Jenkins build slaves.
- [jrasell/levant](https://github.com/jrasell/levant) - A templating and deployment tool for HashiCorp Nomad jobs that provides realtime feedback and detailed failure messages upon deployment issues.
- [ValFadeev/rundeck-nomad-plugin](https://github.com/ValFadeev/rundeck-nomad-plugin) - A Rundeck plugin for authoring and running Nomad jobs by operators or in automated deployment pipelines.
- [screwdrivercd/nomad](http://screwdriver.cd/) - Use nomad to schedule and execute workflows triggered by an scm (github/bitbucket).
- [fortress-shell](https://github.com/fortress-shell/fortress-shell) - Self-written CI/CD SaaS based on Hashicorp Nomad

## Plugins

- [trivago/nomad-pot-driver](https://github.com/trivago/nomad-pot-driver) - Plugin for managing FreeBSD Jails with Hashicorp's Nomad
- [cneira/jail-task-driver](https://github.com/cneira/jail-task-driver) - Task driver that uses FreeBSD jails
- [pascomnet/nomad-driver-podman](https://github.com/pascomnet/nomad-driver-podman) - A nomad task driver for [podman containers](https://podman.io)
- [Roblox/nomad-driver-containerd](https://github.com/Roblox/nomad-driver-containerd) - A nomad task driver for [containerd](https://containerd.io). Documentation on [`nomadproject.io`](https://www.nomadproject.io/docs/drivers/external/containerd).
- [JanMa/nomad-driver-nspawn](https://github.com/JanMa/nomad-driver-nspawn) - A nomad task driver to run containers with [systemd-nspawn](https://www.freedesktop.org/software/systemd/man/systemd-nspawn.html).
- [hpcng/nomad-driver-singularity](https://github.com/hpcng/nomad-driver-singularity) - A nomad task driver to run [singularity containers](https://github.com/sylabs/singularity).
- [Roblox/nomad-driver-iis](https://github.com/Roblox/nomad-driver-iis) - A nomad task driver to run [windows IIS](https://www.iis.net/) tasks.
- [cneira/firecracker-task-driver](https://github.com/cneira/firecracker-task-driver) - A nomad task driver for [Firecracker](https://firecracker-microvm.github.io/) micro-vms.
- [cneira/nomad-zones-driver](https://github.com/cneira/nomad-zones-driver) - Task driver for [Illumos](https://illumos.org/) zones.

## Self Service

- [data-science-platform/cluster-broccoli](https://github.com/data-science-platform/cluster-broccoli) - Cluster Broccoli is a RESTful web service + UI to manage Nomad jobs through a self service application. Jobs are defined based on templates, allowing for a selectable amount of customization.

## Job Files and Packs

- [hashicorp/nomad-pack-community-registry](https://github.com/hashicorp/nomad-pack-community-registry) - The official community registry for Nomad Pack templates.
- [jrasell/nomadfiles](https://github.com/jrasell/nomadfiles) A collection of Nomad job files for deploying applications to a cluster.
- [perrymanuk/hashi-homelab](https://github.com/perrymanuk/hashi-homelab) Job files for a small lightweight homelab based on nomad and consul from hashicorp.

## Utilities

- [seatgeek/nomad-helper](https://github.com/seatgeek/nomad-helper) - Simple helper binary to allow you to reevaluate all jobs, drain an node (and wait for all allocations to stop), force a garbage collection, export / import job task group counts in YAML format.
- [seatgeek/nomad-firehose](https://github.com/seatgeek/nomad-firehose) - Go binary that "tails" API endpoints and emit messages for each changed resource to RabbitMQ, AWS kinesis or stdout.
- [seatgeek/nomad-crashloop-detector](https://github.com/seatgeek/nomad-crashloop-detector) - Consuming the RabbitMQ output from seatgeek/nomad-firehose, will detect when allocations restart too fast or too often, outputing the offending allocation to RabbitMQ, AWS Kinesis or stdout.
- [jrasell/nomad-toast](https://github.com/jrasell/nomad-toast) - A tool for receiving notifications based on HashiCorp Nomad events.
- [axsuul/nomad-event-streamer](http://github.com/axsuul/nomad-event-streamer) - A tool for sending events to your favorite destinations such as Discord.
- [sepulworld/deadman-check](https://github.com/sepulworld/deadman-check) - A monitoring companion for Nomad periodic jobs that alerts if periodic isn't running at the expected interval.
- [blalor/nomad-watcher](https://github.com/blalor/nomad-watcher) - A simple service that watches Nomad's nodes, jobs, allocations, deployments, and evaluations, and writes the events to a file. Also includes a utility for tailing events to a console window.
- [smintz/nomadgen](https://github.com/smintz/nomadgen) - Define your Nomad jobspecs using Python.
- [jet/nomad-service-alerter](https://github.com/jet/nomad-service-alerter) - A tool which provides opt-in alerting for the jobs running on Nomad. It mainly covers Consul Health-check alerts and Restart-Loop (when allocations switch between "pending" and "running" state often due to internal errors) alerts providing integration with PagerDuty.
- [42wim/nomadctld](https://github.com/42wim/nomadctld) - Ssh server with ability to exec/attach/logs/tail/stop hashicorp nomad containers.
- [ataccama/nomad-deploy](https://github.com/ataccama/nomad-deploy) - Python3 script that renders a Jinja2 template, plans and registers job. Installable as an executable from [pypi.org](https://pypi.org/project/nomad-deploy/).
- [ngine-io/chaotic](https://github.com/ngine-io/chaotic) - Choas monkey with integrated nomad support. Runs as batch job or service and kills allocations periodically and randomly.
- [jsiebens/hashi-up](https://github.com/jsiebens/hashi-up) - A a lightweight utility to install Nomad (and other HashiCorp tools) on any remote Linux host.
- [let-sh/nomad-deploy-result-action](https://github.com/let-sh/nomad-deploy-result-action) - A GitHub action for automating Nomad deploys with GitOps.
- [koyeb/kreconciler](https://github.com/koyeb/kreconciler) - A library for building operators and reconcilers on top of Nomad (or other schedulers).
- [Roblox/nomad-node-problem-detector](https://github.com/Roblox/nomad-node-problem-detector) - A tool used to detect problems on Nomad nodes based on user-defined health checks.
- [hashicorp/nomad-pack](https://github.com/hashicorp/nomad-pack) - An official templating tool and package manager for Nomad, currently a Tech Preview.

## Tutorials

- [anubhavmishra/envoy-consul-sds](https://github.com/anubhavmishra/envoy-consul-sds) - A tutorial on how to get Envoy running on Nomad and using Envoy's SDS(Service Discovery Service) to access Consul API.
- [kelseyhightower/hashiconf-eu-2016](https://github.com/kelseyhightower/hashiconf-eu-2016) - Repo from a talk on building out a deployment with GCE/Consul/Nomad/Fabio loadbalancer. Check out the talk on youtube: https://www.youtube.com/watch?v=Nosa5-xcATw

## Examples / Demos

- [pete0emerson/hashipoc](https://github.com/pete0emerson/hashipoc) - A Vagrant driven example of getting Consul / Vault / Nomad up and running with a sample app deployed
- [fhemberger/nomad-demo](https://github.com/fhemberger/nomad-demo) - Vagrant based demo setup for running Hashicorp Consul, Nomad and Vault, including sample apps for Docker, JRE and a basic monitoring setup. Uses Traefik as load balancer to pick up services directly from Consul catalog.

## Other

- [numkem/nomad-spk](https://github.com/numkem/nomad-spk) - spk (Synology package) to install Hashicorp's nomad scheduler into Synology NAS
