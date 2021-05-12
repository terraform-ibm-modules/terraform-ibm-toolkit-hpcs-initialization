module "hpcs_policies" {
  source               = "git::https://github.com/slzone/terraform-ibm-hpcs-initialisation.git//modules/hpcs-policies"
  depends_on           = [module.hpcs_init]
  region               = var.region
  resource_group_name  = var.resource_group_name
  service_name         = var.service_name
  hpcs_instance_guid   = data.ibm_resource_instance.hpcs_instance.guid
  allowed_network_type = var.allowed_network_type
  hpcs_port            = var.hpcs_port
  dual_auth_delete     = var.dual_auth_delete
}
