resource "azuredevops_serviceendpoint_sonarcloud" "serviceendpoint_sonarclouds" {
  for_each = var.serviceendpoint_sonarclouds

  project_id            = each.value.project_id
  service_endpoint_name = each.value.service_endpoint_name
  token                 = each.value.token
  description           = each.value.description

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

