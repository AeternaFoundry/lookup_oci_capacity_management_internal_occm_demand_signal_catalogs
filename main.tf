data "oci_capacity_management_internal_occm_demand_signal_catalogs" "capacity_management_internal_occm_demand_signal_catalogs_lookup" {
  for_each = var.capacity_management_internal_occm_demand_signal_catalogs_lookup

  compartment_id        = each.value.compartment_id
  occ_customer_group_id = each.value.occ_customer_group_id
  display_name          = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

