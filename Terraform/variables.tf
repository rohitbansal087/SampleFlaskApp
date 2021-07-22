# Authentication Specific Variables
variable "azure_subscription_id" {}
variable "azure_client_id" {}
variable "azure_client_secret" {}
variable "azure_tenant_id" {}

# Variable Declaration - RG, Location
variable "rg_name" {
  description = "Azure Resouce Group Name"
  default     = "UKS-DEV-IDAY-RG"
}

variable "location" {
  description = "Azure Resouce Group Location"
  default     = "UK South"
}

variable "rs_tags" {
  description = "Azure Resource Tags"
  default = {
    "Project"     = "IDAY"
    "Environment" = "DEV"
  }
}

# Variable Declaration - PaaS Resources
variable "asp_name" {
  default     = "IDAY-ASP-01"
}
variable "asp_tier" {
  default     = "Standard"
}
variable "asp_size" {
  default     = "S1"
}
variable "appservice_name" {
  default     = "IDAY-WEBAPP-01"
}

