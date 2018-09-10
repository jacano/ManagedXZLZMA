LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libxzlzma
LOCAL_EXPORT_CFLAGS += \
	-DHAVE_CONFIG_H
	-DDLL_EXPORT \
	-DNDEBUG \
	-D_USRDLL \
	-DLIBLZMADLL_EXPORTS
LOCAL_SRC_FILES += \
	$(LOCAL_PATH)/../xz/common/tuklib_cpucores.c \
	$(LOCAL_PATH)/../xz/common/tuklib_physmem.c \
	$(LOCAL_PATH)/../xz/liblzma/check/check.c \
	$(LOCAL_PATH)/../xz/liblzma/check/crc32_fast.c \
	$(LOCAL_PATH)/../xz/liblzma/check/crc32_table.c \
	$(LOCAL_PATH)/../xz/liblzma/check/crc64_fast.c \
	$(LOCAL_PATH)/../xz/liblzma/check/crc64_table.c \
	$(LOCAL_PATH)/../xz/liblzma/check/sha256.c \
	$(LOCAL_PATH)/../xz/liblzma/common/alone_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/alone_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/auto_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/block_buffer_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/block_buffer_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/block_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/block_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/block_header_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/block_header_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/block_util.c \
	$(LOCAL_PATH)/../xz/liblzma/common/common.c \
	$(LOCAL_PATH)/../xz/liblzma/common/easy_buffer_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/easy_decoder_memusage.c \
	$(LOCAL_PATH)/../xz/liblzma/common/easy_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/easy_encoder_memusage.c \
	$(LOCAL_PATH)/../xz/liblzma/common/easy_preset.c \
	$(LOCAL_PATH)/../xz/liblzma/common/filter_buffer_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/filter_buffer_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/filter_common.c \
	$(LOCAL_PATH)/../xz/liblzma/common/filter_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/filter_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/filter_flags_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/filter_flags_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/hardware_cputhreads.c \
	$(LOCAL_PATH)/../xz/liblzma/common/hardware_physmem.c \
	$(LOCAL_PATH)/../xz/liblzma/common/index.c \
	$(LOCAL_PATH)/../xz/liblzma/common/index_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/index_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/index_hash.c \
	$(LOCAL_PATH)/../xz/liblzma/common/outqueue.c \
	$(LOCAL_PATH)/../xz/liblzma/common/stream_buffer_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/stream_buffer_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/stream_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/stream_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/stream_flags_common.c \
	$(LOCAL_PATH)/../xz/liblzma/common/stream_flags_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/stream_flags_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/vli_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/vli_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/common/vli_size.c \
	$(LOCAL_PATH)/../xz/liblzma/delta/delta_common.c \
	$(LOCAL_PATH)/../xz/liblzma/delta/delta_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/delta/delta_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/lzma/fastpos_table.c \
	$(LOCAL_PATH)/../xz/liblzma/lzma/lzma2_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/lzma/lzma2_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/lzma/lzma_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/lzma/lzma_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/lzma/lzma_encoder_optimum_fast.c \
	$(LOCAL_PATH)/../xz/liblzma/lzma/lzma_encoder_optimum_normal.c \
	$(LOCAL_PATH)/../xz/liblzma/lzma/lzma_encoder_presets.c \
	$(LOCAL_PATH)/../xz/liblzma/lz/lz_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/lz/lz_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/lz/lz_encoder_mf.c \
	$(LOCAL_PATH)/../xz/liblzma/rangecoder/price_table.c \
	$(LOCAL_PATH)/../xz/liblzma/simple/arm.c \
	$(LOCAL_PATH)/../xz/liblzma/simple/armthumb.c \
	$(LOCAL_PATH)/../xz/liblzma/simple/ia64.c \
	$(LOCAL_PATH)/../xz/liblzma/simple/powerpc.c \
	$(LOCAL_PATH)/../xz/liblzma/simple/simple_coder.c \
	$(LOCAL_PATH)/../xz/liblzma/simple/simple_decoder.c \
	$(LOCAL_PATH)/../xz/liblzma/simple/simple_encoder.c \
	$(LOCAL_PATH)/../xz/liblzma/simple/sparc.c \
	$(LOCAL_PATH)/../xz/liblzma/simple/x86.c
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

