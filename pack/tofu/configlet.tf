#  Copyright (c) Juniper Networks, Inc., 2025-2025.
#  All rights reserved.
#  SPDX-License-Identifier: MIT

resource "apstra_datacenter_configlet" "example" {
  blueprint_id = var.blueprint_id
  condition    = "role in [\"leaf\"]"
  name         = "duplicate MAC timeout"
  generators = [
    {
      config_style  = "junos"
      section       = "top_level_set_delete"
      template_text = format("set protocols evpn duplicate-mac-detection auto-recovery-time %d\n", var.auto_recovery_time)
    },
  ]
}
