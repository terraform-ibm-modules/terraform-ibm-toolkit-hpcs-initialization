module "hpcs" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-hpcs.git"

  resource_group_name      = module.resource_group.name
  region                   = var.region
  name_prefix              = var.name_prefix
  name                     = var.hpcs_name
  provision                = false
 # ibmcloud_api_key         = var.ibmcloud_api_key
  number_of_crypto_units   = 2
}
