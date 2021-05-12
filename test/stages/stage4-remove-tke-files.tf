module "remove_tke_files" {
  source             = "git::https://github.com/slzone/terraform-ibm-hpcs-initialisation.git//modules/remove-tkefiles"
  depends_on         = [module.upload_to_cos]
  tke_files_path     = var.tke_files_path
  input_file_name    = var.input_file_name
  hpcs_instance_guid = data.ibm_resource_instance.hpcs_instance.guid
}
