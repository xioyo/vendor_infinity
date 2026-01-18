# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/infinity/config/common.mk)

# Include AOSP audio files
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage14.mk)
include vendor/infinity/config/aosp_audio.mk

# Include Lineage audio files
include vendor/infinity/config/lineage_audio.mk

# Apps
PRODUCT_PACKAGES += \
    AvatarPicker \
    Glimpse \
    LatinIME

# Media
PRODUCT_PRODUCT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# Display
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    debug.sf.frame_rate_multiple_threshold=60

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# TextClassifier
PRODUCT_PACKAGES += \
    libtextclassifier_annotator_en_model \
    libtextclassifier_annotator_universal_model \
    libtextclassifier_actions_suggestions_universal_model \
    libtextclassifier_lang_id_model

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/app/GoogleExtShared/GoogleExtShared.apk \
    system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk \
    system/etc/default-permissions/default_permissions_co.aospa.sense.xml \
    system/etc/permissions/privapp-permissions-google.xml \
    system/etc/permissions/privapp_allowlist_com.google.android.ext.services.xml \
    system/etc/textclassifier/actions_suggestions.universal.model \
    system/etc/textclassifier/lang_id.model \
    system/etc/textclassifier/textclassifier.en.model \
    system/etc/textclassifier/textclassifier.universal.model \
    system/lib64/libtensorflowlite_jni.so \
    system/priv-app/GoogleExtServices/GoogleExtServices.apk \
    system/fonts/RobotoFallback-VF.ttf \
    system/priv-app/GooglePackageInstaller/GooglePackageInstaller.apk \
    system/priv-app/OmniStyle/OmniStyle.apk \
    system/etc/permissions/privapp-permissions-google-system.xml \
    system/etc/sysconfig/google-hiddenapi-package-allowlist.xml \
    system/media/bootanimation.zip \
    system/priv-app/TagGoogle/TagGoogle.apk \
    system/lib/libtensorflowlite_jni.so


# Themes
PRODUCT_PACKAGES += \
    ThemePicker \
    ThemesStub
