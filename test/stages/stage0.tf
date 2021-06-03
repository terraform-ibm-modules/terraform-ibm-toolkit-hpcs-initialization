# Initialize the HPCS instance
module "hpcs_init" {
  initialize          = var.initialize
  source              = "git::ssh://git@github.com/slzone/terraform-ibm-hpcs-initialisation"
  hpcs_instance_guid  = var.hpcs_instance_guid
  tke_files_path      = var.tke_files_path
  admin1_name         = var.admin1_name
  admin1_password     = var.admin1_password
  admin2_name         = var.admin2_name
  admin2_password     = var.admin2_password
  admin_num           = var.admin_num
  threshold_value     = var.threshold_value
  rev_threshold_value = var.rev_threshold_value
}
