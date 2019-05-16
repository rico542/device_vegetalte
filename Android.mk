#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),vegetalte)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# MODEM
MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 \
    modem.b08 modem.b10 modem.b14 modem.b15 modem.b16 modem.b17 \
    modem.b18 modem.b19 modem.b22 modem.b23 modem.b24 modem.b25 \
    modem.mdt

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

# MBA
MBA_IMAGE := \
    mba.mbn

MBA_SYMLINK := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MBA_IMAGE)))
$(MBA_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "MBA firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MBA_SYMLINK)

# Create a link for the WCNSS config file, which ends up as a writable
# version in /vendor/etc/wifi/
$(shell mkdir -p $(TARGET_OUT_VENDOR)/firmware/wlan/prima; \
    ln -sf /vendor/etc/wifi/WCNSS_qcom_cfg.ini \
	    $(TARGET_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_cfg.ini)

endif
