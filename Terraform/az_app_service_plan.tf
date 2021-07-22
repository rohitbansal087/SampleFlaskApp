# Resource Block to create App Service Plan
resource "azurerm_app_service_plan" "dev_asp" {
  name                = var.asp_name
  location            = var.location
  resource_group_name = azurerm_resource_group.dev_rg.name 
  kind                = "Linux"
  reserved            = true

  sku {
    tier = var.asp_tier
    size = var.asp_size
  }

  tags = {
    Project     = var.rs_tags["Project"]
    Environment = var.rs_tags["Environment"]
  }
}

# Resource Output
output "tst_asp_id" {
  value = azurerm_app_service_plan.dev_asp.id
}

