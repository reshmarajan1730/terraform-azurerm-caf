module "azure_maps" {
  source   = "./modules/azure_maps"
  for_each = var.azure_maps

  global_settings     = local.global_settings
  resource_group_name = each.value
  sku_name            = each.value
}

output "azure_maps" {
  value     = module.azure_maps
}