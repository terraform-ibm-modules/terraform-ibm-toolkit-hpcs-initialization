#########################################################################################
# IBM Cloud Hyper Protect Crypto Services Provisioning, Initialization and Managing Keys
# Copyright 2020 IBM
#########################################################################################

variable "initialize" {
  type        = bool
  description = "Flag indicating that if user want to initialize the hpcs instance. If 'true' then the instance is expected to initialize."
  default     = false
}

# Path to which CLOUDTKEFILES has to be exported
variable "tke_files_path" {
  type        = string
  description = "Path to which tke files has to be exported"
}

variable "hpcs_instance_guid" {
  type        = string
  description = "HPCS Instance GUID"
}

variable "admin1_name" {
  type        = string
  description = "First admin name"
}

variable "admin1_password" {
  type        = string
  description = "First admin password"
}

variable "admin2_name" {
  type        = string
  description = "Second admin name"
}

variable "admin2_password" {
  type        = string
  description = "second admin password"
}

variable "admin_num" {
  type        = number
  description = "Number of admins to manage HPCS"
  default     = 2
}

variable "threshold_value" {
  type        = number
  description = "Threshold value"
  default     = 2
}

variable "rev_threshold_value" {
  type        = number
  description = "Remove / delete threshold value"
  default     = 2
}
