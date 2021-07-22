# Authentication Specific Variables
variable "azure_subscription_id" {}
variable "azure_client_id" {}
variable "azure_client_secret" {}
variable "azure_tenant_id" {}

# Variable Declaration - RG, Location
variable "rg_name" {
  description = "Azure Resouce Group Name"
}

variable "location" {
  description = "Azure Resouce Group Location"
  default     = "UK South"
}

variable "rs_tags" {
  description = "Azure Resource Tags"
  default = {
    "Project"     = "FC"
    "Environment" = "TST"
  }
}

# Variable Declaration - PaaS Resources
variable "asp_name" {}
variable "asp_tier" {}
variable "asp_size" {}
variable "appservice_name" {}

