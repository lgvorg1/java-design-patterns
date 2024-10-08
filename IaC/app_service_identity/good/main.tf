resource "azurerm_app_service" "pass" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id
  client_cert_enabled          = true
  identity {
    type = "UserAssigned"
    identity_ids = "12345"
  }
}

resource "azurerm_linux_web_app" "pass" {
  name                = "example"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id
  https_only = true
  site_config {
    http2_enabled = true
  }
    identity {
    type = "UserAssigned"
    identity_ids = "12345"
  }
}

resource "azurerm_windows_web_app" "pass" {
  name                = "example"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id
  https_only = true
  site_config {
    http2_enabled = true
  }
  identity {
    type = "UserAssigned"
    identity_ids = "12345"
  }
}