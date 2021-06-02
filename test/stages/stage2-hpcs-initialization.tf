module "hpcs_initialization" {
  source = "./module"

  initialize          = true
  tke_files_path      = "./tke_files"
  hpcs_instance_guid  = module.hpcs.guid
  admin1_name         = "admin1"
  admin1_password     = "password"
  admin2_name         = "admin2"
  admin2_password     = "password"
}
