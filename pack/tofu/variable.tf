#  Copyright (c) Juniper Networks, Inc., 2025-2025.
#  All rights reserved.
#  SPDX-License-Identifier: MIT

variable "blueprint_id" {
  type = string
}

variable "auto_recovery_time" {
  type = number
  default = 22
  description = "The length of time a device suppresses a duplicate MAC address. At the end of this duration, MAC address updates will resume. The value can be from 1 through 360 minutes."
}
