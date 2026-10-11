variable "compute_volume_attach_v2s" {
  description = <<EOT
Map of compute_volume_attach_v2s, attributes below
Required:
    - instance_id
    - volume_id
Optional:
    - device
    - multiattach
    - region
    - tag
    - timeouts (block):
        - create (optional)
        - delete (optional)
    - vendor_options (block):
        - ignore_volume_confirmation (optional)
EOT

  type = map(object({
    instance_id = string
    volume_id   = string
    device      = optional(string)
    multiattach = optional(bool)
    region      = optional(string)
    tag         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
    vendor_options = optional(object({
      ignore_volume_confirmation = optional(bool)
    }))
  }))
}

