# Initialize the HPCS instance
module "hpcs_init" {
  initialize = var.initialize
  source     = "git@github.com:slzone/terraform-ibm-hpcs-initialization.git?ref=hpcs-init"
  # source              = "https://github.com/slzone/terraform-ibm-hpcs-initialization"
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

# Upload signed keys / tke files to provided COS bucket
module "upload_to_cos" {
  source = "git::https://github.com/slzone/terraform-ibm-hpcs.git//modules/upload-to-cos?ref=hpcs-init"
  # source             = "git::https://github.com/slzone/terraform-ibm-hpcs.git//modules/upload-to-cos"
  depends_on         = [module.hpcs_init]
  api_key            = var.api_key
  cos_crn            = var.cos_crn
  endpoint           = var.endpoint
  bucket_name        = var.bucket_name
  tke_files_path     = var.tke_files_path
  hpcs_instance_guid = var.hpcs_instance_guid
}

# Remove tke files from local path
module "remove_tke_files" {
  # source             = "git::https://github.com/slzone/terraform-ibm-hpcs.git//modules/remove-tkefiles?ref=hpcs-init"
  source             = "git::https://github.com/slzone/terraform-ibm-hpcs.git//modules/remove-tkefiles"
  depends_on         = [module.upload_to_cos]
  tke_files_path     = var.tke_files_path
  input_file_name    = var.input_file_name
  hpcs_instance_guid = var.hpcs_instance_guid
}

# Apply HPCS Network and dual auth delete policies
module "hpcs_policies" {
  #   source               = "git::https://github.com/slzone/terraform-ibm-hpcs-initialisation.git//modules/hpcs-policies"
  source               = "git::https://github.com/slzone/terraform-ibm-hpcs-initialisation.git//modules/hpcs-policies?ref=hpcs-init"
  depends_on           = [module.hpcs_init]
  region               = var.region
  resource_group_name  = var.resource_group_name
  service_name         = var.service_name
  hpcs_instance_guid   = var.hpcs_instance_guid
  allowed_network_type = var.allowed_network_type
  hpcs_port            = var.hpcs_port
  dual_auth_delete     = var.dual_auth_delete
}

