#########################################################################################
# IBM Cloud Hyper Protect Crypto Services Provisioning, Initialization and Managing Keys
# Copyright 2020 IBM
#########################################################################################

resource "null_resource" "hpcs_init" {
  count = var.initialize ? 1 : 0

  triggers = {
    CLOUDTKEFILES = var.tke_files_path
    INPUT_FILE    = file(var.input_file_name)
    HPCS_GUID     = var.hpcs_instance_guid
  }
  provisioner "local-exec" {
    when    = create
    command = <<EOT
    python ${path.module}/scripts/auto_init.py
        EOT
    environment = {
      CLOUDTKEFILES = var.tke_files_path
      # INPUT_FILE      = file(var.input_file_name)
      HPCS_GUID           = var.hpcs_instance_guid
      ADMIN1_NAME         = var.admin1_name
      ADMIN1_PASSWORD     = var.admin1_password
      ADMIN2_NAME         = var.admin2_name
      ADMIN2_PASSWORD     = var.admin2_password
      ADMIN_NUM           = var.admin_num
      THRESHOLD_VALUE     = var.threshold_value
      REV_THRESHOLD_VALUE = var.rev_threshold_value
    }
  }
  provisioner "local-exec" {
    when    = destroy
    command = <<EOT
    python ${path.module}/scripts/destroy.py
        EOT
    environment = {
      CLOUDTKEFILES = self.triggers.CLOUDTKEFILES
      INPUT_FILE    = self.triggers.INPUT_FILE
      HPCS_GUID     = self.triggers.HPCS_GUID
    }
  }
}

