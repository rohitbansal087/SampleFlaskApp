# Resource block to create Resource Groups
resource "azurerm_resource_group" "dev_rg" {
  name     = var.rg_name
  location = var.location

  tags = {
    Project     = var.rs_tags["Project"]
    Environment = var.rs_tags["Environment"]
  } 
}