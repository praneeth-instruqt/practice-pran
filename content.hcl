resource "page" "customize-your-web-browser" {
  title = "customize your web browser"
  file  = "instructions/__default/customize-your-web-browser.md"
  activities = {
    "edit-homepage" = resource.task.edit-homepage
  }
}
