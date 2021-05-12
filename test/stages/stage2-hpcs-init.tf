module "hpcs_init" {
  initialize = var.initialize
  source     = "github.com/slzone/terraform-ibm-hpcs-initialisation?ref=hpcs-init-dev"
  # source           = "github.com/slzone/terraform-ibm-hpcs-initialisation"
  depends_on         = [module.download_from_cos]
  tke_files_path     = var.tke_files_path
  input_file_name    = var.input_file_name
  hpcs_instance_guid = data.ibm_resource_instance.hpcs_instance.guid
}
