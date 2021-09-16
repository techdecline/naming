output "tags" {
  value = {
    "application"   = var.application
    "environment"   = var.environment
    "kostenstelle"  = var.cost_center
    "kostentraeger" = var.cost_bearer
    "appcontact"    = var.appcontact
    "teccontact"    = var.teccontact
    "dr"            = var.disaster_recovery
    "serviceclass"  = var.service_class
    "schutzklasse"  = var.protection_class
    "startdate"     = var.project_start_date
  }
}

output "azurerm_resource_group" {
  value = "rg-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_automation_account" {
  value = "aa-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_log_analytics_workspace" {
  value = "log-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_virtual_machine" {
  value = {
    basename = lower("vm${var.application_short}${local.environment[var.environment]}")
  }
}

output "azurerm_availability_set" {
  value = "avail-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_load_balancer_internal" {
  value = "lbi-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_virtual_network" {
  value = "vnet-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_virtual_network_gateway" {
  value = "vgw-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_local_network_gateway" {
  value = "lgw-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_application_gateway" {
  value = "agw-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_virtual_network_gateway_connection" {
  value = "vgwcon-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_network_watcher" {
  value = "nw-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_express_route_circuit" {
  value = "erc-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_route_table" {
  value = "rt-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_route" {
  value = "udr-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_subnet" {
  value = "snet-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_network_security_group" {
  value = "nsg-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_key_vault" {
  value = "kv-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_application_insights" {
  value = "appi-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_container_group" {
  value = {
    basename = "ci-${var.application_short}-${local.environment[var.environment]}"
  }
}

output "azurerm_container_registry" {
  value = lower("cr${var.application_short}${local.environment[var.environment]}")
}

output "azurerm_storage_account_basename" {
  value = lower("st${var.application_short}${local.environment[var.environment]}")
}

output "azurerm_recovery_services_vault" {
  value = "rsv-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_backup_policy_vm" {
  value = "bp"
}

output "azurerm_postgresql_server" {
  value = "psql-${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_postgresql_database" {
  value = "db-psql-${var.application_short}-${local.environment[var.environment]}"
}

output "azuredevops_variable_group" {
  value = "${var.application_short}-${local.environment[var.environment]}"
}

output "azurerm_managed_identity" {
  value = "id-${var.application_short}-${local.environment[var.environment]}"
}