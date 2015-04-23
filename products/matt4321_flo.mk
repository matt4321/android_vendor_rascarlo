# Inherit AOSP device configuration for flo.
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit common product files.
$(call inherit-product, vendor/rascarlo/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := matt4321_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7 (2013)
PRODUCT_MANUFACTURER := asus

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/razor/razor:5.1.1/LMY47V/1570855:user/release-keys \
    PRIVATE_BUILD_DESC="razor-user 5.1.1 LMY47V 1570855 release-keys"

# Inherit media effect blobs
-include vendor/rascarlo/products/common_media_effects.mk
