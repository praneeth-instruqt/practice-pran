
resource "layout" "single_panel" {
  column {
    width = "50"
    instructions {
      title = "Instructions"
    }
  }
  column {
    width = "50"
    tab "web-server" {
      title  = "web-server"
      target = resource.service.web-server
    }
    tab "web-server-1" {
      title  = "web-server"
      target = resource.terminal.web-server
    }
  }
}
