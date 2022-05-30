data "template_file" "appconfig" {
  template = file("${path.module}/template/appconfig.json")
  vars = {
    remoteServiceBaseUrl = "https://abcd13579.com"
    appBaseUrl           = "https://efgh24680.com"
  }
}

resource "local_file" "appconfig" {
  content         = data.template_file.appconfig.rendered
  filename        = "/Users/jenwang/Desktop/appconfig.json"
  file_permission = "0644"
}

resource "local_file" "appconfig_production" {
  content         = data.template_file.appconfig.rendered
  filename        = "/Users/jenwang/Desktop/appconfig.production.json"
  file_permission = "0644"
}
