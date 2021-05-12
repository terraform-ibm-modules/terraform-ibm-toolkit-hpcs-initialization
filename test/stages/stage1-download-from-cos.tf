module "download_from_cos" {
  source          = "git::https://github.com/slzone/terraform-ibm-hpcs-initialisation.git//modules/download-from-cos"
  api_key         = var.api_key
  cos_crn         = var.cos_crn
  endpoint        = var.endpoint
  bucket_name     = var.bucket_name
  input_file_name = var.input_file_name
}
