
# Resource Group Variables
variable "resource_group_name" {
  type        = string
  description = "Existing resource group where the IKS cluster will be provisioned."
  default = "toolkit-dev"
}

variable "ibmcloud_api_key" {
  type        = string
  description = "The api key for IBM Cloud access"
}

variable "region" {
  type        = string
  description = "Region for VLANs defined in private_vlan_number and public_vlan_number."
  default = "us-east"
}

variable "name_prefix" {
  type        = string
  description = "Prefix name that should be used for the cluster and services. If not provided then resource_group_name will be used"
  default     = ""
}

variable "hpcs_name" {
  default = ""
}

variable "initialize" {
  type        = bool
  description = "Flag indicating that if user want to initialize the hpcs instance. If 'true' then the instance is expected to initialize."
  default     = true
}

variable "admin1_name" {
  type        = string
  description = "First admin name"
  default     = "admin1"
}

variable "admin1_password" {
  type        = string
  description = "First admin password"
  default     = "admin123"
}

variable "admin2_name" {
  type        = string
  description = "Second admin name"
  default     = "admin2"
}

variable "admin2_password" {
  type        = string
  description = "second admin password"
  default     = "admin567"
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
