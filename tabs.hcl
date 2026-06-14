resource "service" "web-server" {
  target = resource.container.web-server
  scheme = "http"
  port   = 80
}

resource "terminal" "web-server" {
  target = resource.container.web-server
  shell  = "/bin/bash"
}
