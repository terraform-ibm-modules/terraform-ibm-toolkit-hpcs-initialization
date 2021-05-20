# Enable the HPCS policies 

resource "null_resource" "enable_policies" {
  provisioner "local-exec" {
    when    = create
    command = "/bin/bash ${path.module}/../../scripts/network_policy.sh"

    environment = {
      REGION               = var.region
      HPCS_INSTANCE_ID     = var.hpcs_instance_guid
      ALLOWED_NETWORK_TYPE = var.allowed_network_type
      PORT                 = var.hpcs_port
    }
  }
  provisioner "local-exec" {
    when    = create
    command = "/bin/bash ${path.module}/../../scripts/dual_authorization_policy.sh"

    environment = {
      REGION           = var.region
      HPCS_INSTANCE_ID = var.hpcs_instance_guid
      DUAL_AUTH_DELETE = var.dual_auth_delete
      PORT             = var.hpcs_port
    }
  }
}
