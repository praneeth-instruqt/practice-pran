resource "task" "edit-homepage" {
  description     = "lets update nginx homepage"
  success_message = ""
  config {
    target = resource.container.web-server
    parallel_exec {
      condition = false
      check     = false
      solve     = false
      setup     = false
      cleanup   = false
    }
  }
  condition "file-modified" {
    description = "customize the ngnix homepage with your own message"
    config {
      target = resource.container.web-server
    }
    check {
      script          = "scripts/task/edit-homepage/file-modified_check0"
      failure_message = "Please edit /usr/share/nginx/html/index.html with your custom message"
    }
  }
}
