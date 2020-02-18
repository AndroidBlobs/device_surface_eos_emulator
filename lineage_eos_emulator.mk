# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from eos_emulator device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := surface
PRODUCT_DEVICE := eos_emulator
PRODUCT_MANUFACTURER := surface
PRODUCT_NAME := lineage_eos_emulator
PRODUCT_MODEL := SurfaceDuoEmulator API 29

PRODUCT_GMS_CLIENTID_BASE := android-surface
TARGET_VENDOR := surface
TARGET_VENDOR_PRODUCT_NAME := eos_emulator
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="eos_emulator-userdebug 10 emu-q-pub-userdebug 2020.117.2 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Surface/eos_emulator/eos_emulator:10/emu-q-pub-userdebug/2020.117.2:userdebug/test-keys
