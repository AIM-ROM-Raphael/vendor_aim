# Copyright (C) 2017 AIMROM
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# AIM versioning

PRODUCT_BRAND ?= AIMROM

AIM_BASE_VERSION = System-V3.0

ifndef AIM_BUILD_TYPE
    AIM_BUILD_TYPE := UNOFFICIAL
endif


# Set all versions
AIM_VERSION := AIM-$(AIM_BASE_VERSION)-$(shell date -u +%Y%m%d)-$(AIM_BUILD_TYPE)-$(AIM_BUILD)

AIM_DISPLAY_VERSION := $(AIM_VERSION)

AIM_MOD_VERSION := $(AIM_BASE_VERSION)-$(AIM_BUILD_TYPE)

# Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.aim.version=$(AIM_VERSION) \
    ro.mod.version=$(AIM_MOD_VERSION)

# Display version
  PRODUCT_PROPERTY_OVERRIDES += \
  ro.aim.display.version=$(AIM_DISPLAY_VERSION)
