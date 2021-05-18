variable "api_key" {
  type        = string
  description = "api key of the COS bucket"
}

variable "cos_crn" {
  type        = string
  description = "COS instance CRN"
}

variable "endpoint" {
  type        = string
  description = "COS endpoint"
}

variable "bucket_name" {
  type        = string
  description = "COS bucket name"
}

variable "initialize" {
  type        = bool
  description = "Flag indicating that if user want to initialize the hpcs instance. If 'true' then the instance is expected to initialize."
  default     = true
}

variable "tke_files_path" {
  type        = string
  description = "Path to which tke files has to be exported"
}

variable "hpcs_instance_guid" {
  type        = string
  description = "HPCS Instance GUID"
}

variable "region" {
  type        = string
  description = "Location of HPCS Instance"
  default     = "us-south"
}

variable "service_name" {
  type        = string
  description = "Name of HPCS Instance"
  default     = "hs-crypto"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
  default     = "slz-rg"
}

variable "allowed_network_type" {
  type        = string
  description = "The network access policy to apply to your Hyper Protect Crypto Services instance. Acceptable values are public-and-private or private-only.After the network access policy is set to private-only, you cannot access your instance from the public network and cannot view or manage keys through the UI. However, you can still adjust the network setting later using the API or CLI"
  default     = "public-and-private"
}

variable "hpcs_port" {
  type        = number
  description = "HPCS service port"
}

variable "dual_auth_delete" {
  type        = bool
  description = "Dual auth deletion policy enabled or not"
  default     = true
}

variable "api_key" {
  type        = string
  description = "api key of the COS bucket"
  default     = "yV-sZ18pN_yRmWPI3UxWCFcc7Cd-3MfllxIDlf1Ptno9"
}

variable "cos_crn" {
  type        = string
  description = "COS instance CRN"
  default     = "crn:v1:bluemix:public:iam-identity::a/ad5d072102214f4395eab22f03bbb2f9::serviceid:ServiceId-b5f7330c-5a56-4786-9488-11f76accde52"
}

variable "endpoint" {
  type        = string
  description = "COS endpoint"
  default     = "s3.us-east.cloud-object-storage.appdomain.cloud"
}

variable "bucket_name" {
  type        = string
  description = "COS bucket name"
  default     = "cloud-object-storage-5a-cos-standard-1mk"
}

variable "initialize" {
  type        = bool
  description = "Flag indicating that if user want to initialize the hpcs instance. If 'true' then the instance is expected to initialize."
  default     = true
}

variable "tke_files_path" {
  type        = string
  description = "Path to which tke files has to be exported"
  default     = "/Users/aparnamane/tke-files"
}

variable "hpcs_instance_guid" {
  type        = string
  description = "HPCS Instance GUID"
  default     = "3395bd87-0814-42e1-9800-3ce199cf769b"
}

variable "region" {
  type        = string
  description = "Location of HPCS Instance"
  default     = "us-south"
}

variable "service_name" {
  type        = string
  description = "Name of HPCS Instance"
  default     = "slz-rg-hpcs"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
  default     = "slz-rg"
}

variable "allowed_network_type" {
  type        = string
  description = "The network access policy to apply to your Hyper Protect Crypto Services instance. Acceptable values are public-and-private or private-only.After the network access policy is set to private-only, you cannot access your instance from the public network and cannot view or manage keys through the UI. However, you can still adjust the network setting later using the API or CLI"
  default     = "public-and-private"
}

variable "hpcs_port" {
  type        = number
  description = "HPCS service port"
  default     = 11317
}

variable "dual_auth_delete" {
  type        = bool
  description = "Dual auth deletion policy enabled or not"
  default     = true
}

variable "admin1_name" {
  type        = string
  description = "First admin name"
  default = "admin1"
}

variable "admin1_password" {
  type        = string
  description = "First admin password"
  default = "admin123"
}

variable "admin2_name" {
  type        = string
  description = "Second admin name"
  default = "admin2"
}

variable "admin2_password" {
  type        = string
  description = "second admin password"
  default = "admin567"
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

