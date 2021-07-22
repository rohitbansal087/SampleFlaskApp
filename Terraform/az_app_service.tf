# Resource block to deploy Azure WebApp
resource "azurerm_app_service" "dev_webapp" {                                  
   name                = var.appservice_name                                
   location            = var.location   
   resource_group_name = azurerm_resource_group.dev_rg.name 
   app_service_plan_id = azurerm_app_service_plan.dev_asp.id      
                                                                            
   site_config {                                                            
     linux_fx_version = "PYTHON|3.8"                                        
   }

  tags = {
    Project     = var.rs_tags["Project"]
    Environment = var.rs_tags["Environment"]
  }                                                                                                                                           
 }