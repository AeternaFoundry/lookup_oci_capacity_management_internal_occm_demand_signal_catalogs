variable "capacity_management_internal_occm_demand_signal_catalogs_lookup" {
  description = <<EOT
Map of capacity_management_internal_occm_demand_signal_catalogs_lookup, attributes below
Required:
    - compartment_id
    - occ_customer_group_id
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id        = string
    occ_customer_group_id = string
    display_name          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

