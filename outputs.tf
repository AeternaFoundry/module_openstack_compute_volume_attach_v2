output "compute_volume_attach_v2s_id" {
  description = "Map of id values across all compute_volume_attach_v2s, keyed the same as var.compute_volume_attach_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_compute_volume_attach_v2.compute_volume_attach_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_volume_attach_v2s_device" {
  description = "Map of device values across all compute_volume_attach_v2s, keyed the same as var.compute_volume_attach_v2s except keys with no device are omitted"
  value       = { for k, v in openstack_compute_volume_attach_v2.compute_volume_attach_v2s : k => v.device if v.device != null && length(v.device) > 0 }
}
output "compute_volume_attach_v2s_instance_id" {
  description = "Map of instance_id values across all compute_volume_attach_v2s, keyed the same as var.compute_volume_attach_v2s except keys with no instance_id are omitted"
  value       = { for k, v in openstack_compute_volume_attach_v2.compute_volume_attach_v2s : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "compute_volume_attach_v2s_multiattach" {
  description = "Map of multiattach values across all compute_volume_attach_v2s, keyed the same as var.compute_volume_attach_v2s except keys with no multiattach are omitted"
  value       = { for k, v in openstack_compute_volume_attach_v2.compute_volume_attach_v2s : k => v.multiattach if v.multiattach != null }
}
output "compute_volume_attach_v2s_region" {
  description = "Map of region values across all compute_volume_attach_v2s, keyed the same as var.compute_volume_attach_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_compute_volume_attach_v2.compute_volume_attach_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_volume_attach_v2s_tag" {
  description = "Map of tag values across all compute_volume_attach_v2s, keyed the same as var.compute_volume_attach_v2s except keys with no tag are omitted"
  value       = { for k, v in openstack_compute_volume_attach_v2.compute_volume_attach_v2s : k => v.tag if v.tag != null && length(v.tag) > 0 }
}
output "compute_volume_attach_v2s_vendor_options" {
  description = "Map of vendor_options values across all compute_volume_attach_v2s, keyed the same as var.compute_volume_attach_v2s except keys with no vendor_options are omitted"
  value       = { for k, v in openstack_compute_volume_attach_v2.compute_volume_attach_v2s : k => one(v.vendor_options) if v.vendor_options != null && length(v.vendor_options) > 0 }
}
output "compute_volume_attach_v2s_volume_id" {
  description = "Map of volume_id values across all compute_volume_attach_v2s, keyed the same as var.compute_volume_attach_v2s except keys with no volume_id are omitted"
  value       = { for k, v in openstack_compute_volume_attach_v2.compute_volume_attach_v2s : k => v.volume_id if v.volume_id != null && length(v.volume_id) > 0 }
}

