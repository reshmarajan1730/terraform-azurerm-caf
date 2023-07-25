global_settings = {
  default_region = "region1"
  regions = {
    region1 = "australiaeast"
  }
}

resource_groups = {
  test = {
    name = "rg1"
  }
}

azure_maps = {
  map1 = {
    name                      = "map1"
    resource_group_name       = "rg1"
    sku_name                  = "s0"
  }
}
