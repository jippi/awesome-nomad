# Zookeeper

job "zookeeper" {
   # Specify Region
   region = "<REGION>"

   # Specify Datacenter
   datacenters = [ "<DC_NAME>"]

   # Specify job type
    type = "service"

   # define group
   group "synchronization" {

       # define the number of times the tasks need to be executed
       count = 3

       # define job constraints
       constraint {
           attribute = "${attr.kernel.name}"
           value = "linux"
       }
       constraint {
           attribute = "${meta.zk_host_key}"
           value = "zookeeper"
       }

       # specify the number of attemtps to run the job within the specified interval
       restart {
           attempts = 10
           interval = "5m"
           delay = "25s"
           mode = "delay"
       }

       task "zk-check" {
           driver = "exec"
           config {
               command = "tail"
               args = ["-f", "/dev/null"]
           }
           resources {
                   network {
                       mbits = 1
                       port "zk" {}
                   }
               }   
           service {
               name = "zookeeper"
               tags = ["zookeeper"]
               port = "zk"
               }
       }
       task "zookeeper" {
           driver = "docker"
           artifact {
               source = "https://gist.githubusercontent.com/smuthali/d267efdc67f269efefeebf7668618a69/raw/c4af50d8373d1ffa6b521522de06ffcf41f4a6c1/zoo.tpl"
               destination = "local"
           }
        artifact {
        source = "https://gist.githubusercontent.com/smuthali/d628a7162f367b57a269b5fdeb354146/raw/8e31530bb6e1dd595c914e4ef821e76aa27260c5/myid.tpl"
        destination = "local"
        }
           template {
               source = "local/zoo.tpl"
               destination = "local/zookeeper/conf/zoo.cfg"
               change_mode = "noop"
           }
        template {
        source = "local/myid.tpl"
        destination = "local/zookeeper/data/myid"
        change_mode = "noop"
        }
           config {
               image = "<DOCKER_IMAGE_NAME>"
               auth {
                   username = "<DOCKER_REGISTRY_USER>"
                   password = "<DOCKER_REGISTRY_PASSWORD>"
               }
               port_map {
                   zoo_port = 2181
                   zoo_peer1 = 2888
                   zoo_peer2 = 3888
               }
               volumes = [
           "${NOMAD_TASK_DIR}/zookeeper/conf/zoo.cfg:/conf/zoo.cfg",
           "${NOMAD_TASK_DIR}/zookeeper/data:/data",
           "${NOMAD_TASK_DIR}/zookeeper/datalog:/datalog"
                   ]
               }
           resources {
               cpu = 100
               memory = 128
               network {
                   mbits = 5
                   port "zoo_port" {
                       static = 2181
                       }
                   port "zoo_peer1" {
                       static = 2888
                       }
                   port "zoo_peer2" {
                       static = 3888
                       }
                   }
               }
           }
       }
   }
