resource "openstack_compute_volume_attach_v2" "compute_volume_attach_v2s" {
  for_each = var.compute_volume_attach_v2s

  instance_id = each.value.instance_id
  volume_id   = each.value.volume_id
  device      = each.value.device
  multiattach = each.value.multiattach
  region      = each.value.region
  tag         = each.value.tag

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }

  dynamic "vendor_options" {
    for_each = each.value.vendor_options != null ? [each.value.vendor_options] : []
    content {
      ignore_volume_confirmation = vendor_options.value.ignore_volume_confirmation
    }
  }
}

