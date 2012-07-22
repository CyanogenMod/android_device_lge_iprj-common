ifneq ($(filter p930 su640, $(TARGET_BOOTLOADER_BOARD_NAME)),)
include $(call first-makefiles-under,$(call my-dir))
endif
