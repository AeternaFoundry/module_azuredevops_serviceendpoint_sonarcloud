output "serviceendpoint_sonarclouds_id" {
  description = "Map of id values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds except keys with no id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_sonarclouds_authorization" {
  description = "Map of authorization values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds except keys with no authorization are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_sonarclouds_description" {
  description = "Map of description values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds except keys with no description are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_sonarclouds_project_id" {
  description = "Map of project_id values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_sonarclouds_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds except keys with no service_endpoint_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}
output "serviceendpoint_sonarclouds_token" {
  description = "Map of token values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds except keys with no token are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

