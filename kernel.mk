#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel modules
KERNEL_MODULES_ORIG := $(LOCAL_PATH)/modules
KERNEL_MODULES_DEST := $(TARGET_COPY_OUT_VENDOR)/modules

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(KERNEL_MODULES_ORIG)/,$(KERNEL_MODULES_DEST))

# Recovery kernel modules
KERNEL_RECOVERY_MODULES_ORIG := $(LOCAL_PATH)/recovery-modules
KERNEL_RECOVERY_MODULES_DEST := $(TARGET_COPY_OUT_RECOVERY)/root
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(KERNEL_RECOVERY_MODULES_ORIG)/,$(KERNEL_RECOVERY_MODULES_DEST))
