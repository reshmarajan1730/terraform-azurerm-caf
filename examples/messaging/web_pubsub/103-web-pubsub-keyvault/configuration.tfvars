global_settings = {
  default_region = "region1"
  regions = {
    region1 = "southeastasia"
  }
}

resource_groups = {
  wps_examples = {
    name   = "webpubsub"
    region = "region1"
  }
}

keyvaults = {
  kv_client = {
    name                = "testkv"
    resource_group_key  = "test"
    sku_name            = "standard"
    soft_delete_enabled = true
  }
}

web_pubsubs = {
  wps1 = {
    name = "web_pubsub_1"
    sku  = "Free_F1"
    resource_group = {
      key = "wps_examples"
    }
    region = "region1"
    identity = {
      type = "SystemAssigned"
    }
    # To store connection string values in a Keyvault
    keyvaults = {
      kv_client = {
        secret_prefix = "kv-client"
      }
    }
  }
}
