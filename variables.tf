variable "serviceendpoint_sonarclouds" {
  description = <<EOT
Map of serviceendpoint_sonarclouds, attributes below
Required:
    - project_id
    - service_endpoint_name
    - token
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id            = string
    service_endpoint_name = string
    token                 = string
    description           = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_sonarclouds : (
        length(trimspace(v.token)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

