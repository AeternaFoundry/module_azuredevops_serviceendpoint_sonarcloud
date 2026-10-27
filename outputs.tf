output "serviceendpoint_sonarclouds_id" {
  description = "Map of id values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.id }
}
output "serviceendpoint_sonarclouds_authorization" {
  description = "Map of authorization values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.authorization }
}
output "serviceendpoint_sonarclouds_description" {
  description = "Map of description values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.description }
}
output "serviceendpoint_sonarclouds_project_id" {
  description = "Map of project_id values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.project_id }
}
output "serviceendpoint_sonarclouds_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.service_endpoint_name }
}
output "serviceendpoint_sonarclouds_token" {
  description = "Map of token values across all serviceendpoint_sonarclouds, keyed the same as var.serviceendpoint_sonarclouds"
  value       = { for k, v in azuredevops_serviceendpoint_sonarcloud.serviceendpoint_sonarclouds : k => v.token }
  sensitive   = true
}

