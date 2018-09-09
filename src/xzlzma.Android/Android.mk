LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libxzlzma
LOCAL_EXPORT_CFLAGS += \
	-DHAVE_CONFIG_H
	-DDLL_EXPORT \
	-DNDEBUG \
	-D_USRDLL \
	-DLIBLZMADLL_EXPORTS
LOCAL_SRC_FILES := $(LOCAL_PATH)/../crunch/crn.cpp
LOCAL_EXPORT_C_INCLUDES += \
	$(LOCAL_PATH)/../xz \
	$(LOCAL_PATH)/../xz/liblzma/common \
	$(LOCAL_PATH)/../xz/common \
	$(LOCAL_PATH)/../xz/liblzma/api \
	$(LOCAL_PATH)/../xz/liblzma/check \
	$(LOCAL_PATH)/../xz/liblzma/delta \
	$(LOCAL_PATH)/../xz/liblzma/lz \
	$(LOCAL_PATH)/../xz/liblzma/lzma \
	$(LOCAL_PATH)/../xz/liblzma/rangecoder \
	$(LOCAL_PATH)/../xz/liblzma/simple
include $(BUILD_SHARED_LIBRARY)

