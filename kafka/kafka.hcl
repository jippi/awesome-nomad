# Kafka

job "kafka" {
  # Specify Region
  region = "<REGION>"

  # Specify Datacenter
  datacenters = ["<DC NAME>"]

  # Specify job type
  type = "service"

  # Run tasks in serial or parallel (1 for serial)
  update {
    max_parallel = 1
  }

  # define group
  group "kafka-synchronization" {
    # define the number of times the tasks need to be executed
    count = 3

    # define job constraints
    constraint {
      attribute = "${attr.kernel.name}"
      value     = "linux"
    }

    # specify the number of attemtps to run the job within the specified interval
    restart {
      attempts = 10
      interval = "5m"
      delay    = "25s"
      mode     = "delay"
    }

    task "kafka" {
      driver = "docker"

      artifact {
        source      = "https://gist.githubusercontent.com/smuthali/fd2562f704bca761641006d40800348f/raw/7787fddfaa83462af640a677815731ebbe1c9309/kafka.tpl"
        destination = "local"
      }

      template {
        source      = "local/kafka.tpl"
        destination = "local/kafka/config/start-kafka.sh"
        change_mode = "noop"
      }

      config {
        image = "<DOCKER_IMAGE_NAME>"

        auth {
          username = "<DOCKER_REGISTRY_USER>"
          password = "<DOCKER_REGISTRY_PASSWORD>"
        }

        port_map {
          zoo_port   = 2181
          kafka_port = 9092
        }

        command = "/bin/sh"
        args    = ["/usr/bin/kafka/start-kafka.sh"]

        volumes = [
          "${NOMAD_TASK_DIR}/kafka/config:/usr/bin/kafka",
        ]
      }

      resources {
        cpu    = 100
        memory = 128

        network {
          mbits = 5

          port "zoo_port" {
            static = 2182
          }

          port "kafka_port" {
            static = 9092
          }
        }
      }
    }

    task "kafka-check" {
      driver = "exec"

      config {
        command = "/bin/sleep"
        args    = ["1"]
      }

      resources {
        network {
          mbits = 5
          port  "kafka"{}
        }
      }

      service {
        name = "kafka"
        tags = ["kafka"]
        port = "kafka"
      }
    }
  }
}
