resource "network" "name" {
  subnet      = "10.0.200.0/24"
  enable_ipv6 = false
}

resource "container" "web-server" {
  network {
    id = resource.network.name.meta.id
  }
  image {
    name = "nginx:1.25"
  }
  privileged = false
  resources {
    cpu    = 1000
    memory = 256
  }
  run_as {
    user  = "root"
    group = "root"
  }
}
