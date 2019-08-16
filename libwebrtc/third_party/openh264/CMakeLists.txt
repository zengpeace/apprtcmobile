cmake_minimum_required(VERSION 3.4.1)
ENABLE_LANGUAGE(ASM)


set(dir "${WEBRTC_REPO}/third_party/openh264/src")
set(sdir "${dir}/codec")
set(idir "${dir}/include")


include_directories("${sdir}/api/svc")
include_directories("${sdir}/common/arm")
include_directories("${sdir}/common/inc")
include_directories("${sdir}/common/src")

include_directories("${sdir}/api/svc")
include_directories("${sdir}/common/arm")
include_directories("${sdir}/common/inc")
include_directories("${sdir}/common/src")
include_directories("${sdir}/common/x86")
include_directories("${sdir}/processing/interface")
include_directories("${sdir}/processing/src/adaptivequantization")
include_directories("${sdir}/processing/src/backgrounddetection")
include_directories("${sdir}/processing/src/common")
include_directories("${sdir}/processing/src/complexityanalysis")
include_directories("${sdir}/processing/src/denoise")
include_directories("${sdir}/processing/src/downsample")
include_directories("${sdir}/processing/src/imagerotate")
include_directories("${sdir}/processing/src/scenechangedetection")
include_directories("${sdir}/processing/src/scrolldetection")
include_directories("${sdir}/processing/src/vaacalc")

include_directories("${sdir}/api/svc")
include_directories("${sdir}/common/arm/")
include_directories("${sdir}/common/inc")
include_directories("${sdir}/common/src")
include_directories("${sdir}/common/x86")
include_directories("${sdir}/encoder/core/inc")
include_directories("${sdir}/encoder/core/src")
include_directories("${sdir}/encoder/plus/inc")
include_directories("${sdir}/encoder/plus/src")
include_directories("${sdir}/processing/interface")


##include_directories("android/cpufeatures")


set(openh264_common_sources
  "${sdir}/common/inc/WelsList.h"
  "${sdir}/common/inc/WelsLock.h"
  "${sdir}/common/inc/WelsTask.h"
  "${sdir}/common/inc/WelsTaskThread.h"
  "${sdir}/common/inc/WelsThread.h"
  "${sdir}/common/inc/WelsThreadLib.h"
  "${sdir}/common/inc/WelsThreadPool.h"
  "${sdir}/common/inc/copy_mb.h"
  "${sdir}/common/inc/cpu.h"
  "${sdir}/common/inc/cpu_core.h"
  "${sdir}/common/inc/crt_util_safe_x.h"
  "${sdir}/common/inc/deblocking_common.h"
  "${sdir}/common/inc/expand_pic.h"
  "${sdir}/common/inc/golomb_common.h"
  "${sdir}/common/inc/intra_pred_common.h"
  "${sdir}/common/inc/ls_defines.h"
  "${sdir}/common/inc/macros.h"
  "${sdir}/common/inc/mc.h"
  "${sdir}/common/inc/measure_time.h"
  "${sdir}/common/inc/memory_align.h"
  "${sdir}/common/inc/sad_common.h"
  "${sdir}/common/inc/typedefs.h"
  "${sdir}/common/inc/utils.h"
  "${sdir}/common/inc/version.h"
  "${sdir}/common/inc/welsCodecTrace.h"
  "${sdir}/common/inc/wels_common_defs.h"
  "${sdir}/common/inc/wels_const_common.h"
  "${sdir}/common/src/WelsTaskThread.cpp"
  "${sdir}/common/src/WelsThread.cpp"
  "${sdir}/common/src/WelsThreadLib.cpp"
  "${sdir}/common/src/WelsThreadPool.cpp"
  "${sdir}/common/src/common_tables.cpp"
  "${sdir}/common/src/copy_mb.cpp"
  "${sdir}/common/src/cpu.cpp"
  "${sdir}/common/src/crt_util_safe_x.cpp"
  "${sdir}/common/src/deblocking_common.cpp"
  "${sdir}/common/src/expand_pic.cpp"
  "${sdir}/common/src/intra_pred_common.cpp"
  "${sdir}/common/src/mc.cpp"
  "${sdir}/common/src/memory_align.cpp"
  "${sdir}/common/src/sad_common.cpp"
  "${sdir}/common/src/utils.cpp"
  "${sdir}/common/src/welsCodecTrace.cpp"
)

set(openh264_common_sources_asm_arm64
  "${sdir}/common/arm64/arm_arch64_common_macro.S"
  "${sdir}/common/arm64/copy_mb_aarch64_neon.S"
  "${sdir}/common/arm64/deblocking_aarch64_neon.S"
  "${sdir}/common/arm64/expand_picture_aarch64_neon.S"
  "${sdir}/common/arm64/intra_pred_common_aarch64_neon.S"
  "${sdir}/common/arm64/mc_aarch64_neon.S"
)

set(openh264_processing_sources
  "${sdir}/processing/interface/IWelsVP.h"
  "${sdir}/processing/src/adaptivequantization/AdaptiveQuantization.cpp"
  "${sdir}/processing/src/adaptivequantization/AdaptiveQuantization.h"
  "${sdir}/processing/src/backgrounddetection/BackgroundDetection.cpp"
  "${sdir}/processing/src/backgrounddetection/BackgroundDetection.h"
  "${sdir}/processing/src/common/WelsFrameWork.cpp"
  "${sdir}/processing/src/common/WelsFrameWork.h"
  "${sdir}/processing/src/common/WelsFrameWorkEx.cpp"
  "${sdir}/processing/src/common/common.h"
  "${sdir}/processing/src/common/memory.cpp"
  "${sdir}/processing/src/common/memory.h"
  "${sdir}/processing/src/common/resource.h"
  "${sdir}/processing/src/common/typedef.h"
  "${sdir}/processing/src/common/util.h"
  "${sdir}/processing/src/complexityanalysis/ComplexityAnalysis.cpp"
  "${sdir}/processing/src/complexityanalysis/ComplexityAnalysis.h"
  "${sdir}/processing/src/denoise/denoise.cpp"
  "${sdir}/processing/src/denoise/denoise.h"
  "${sdir}/processing/src/denoise/denoise_filter.cpp"
  "${sdir}/processing/src/downsample/downsample.cpp"
  "${sdir}/processing/src/downsample/downsample.h"
  "${sdir}/processing/src/downsample/downsamplefuncs.cpp"
  "${sdir}/processing/src/imagerotate/imagerotate.cpp"
  "${sdir}/processing/src/imagerotate/imagerotate.h"
  "${sdir}/processing/src/imagerotate/imagerotatefuncs.cpp"
  "${sdir}/processing/src/scenechangedetection/SceneChangeDetection.cpp"
  "${sdir}/processing/src/scenechangedetection/SceneChangeDetection.h"
  "${sdir}/processing/src/scrolldetection/ScrollDetection.cpp"
  "${sdir}/processing/src/scrolldetection/ScrollDetection.h"
  "${sdir}/processing/src/scrolldetection/ScrollDetectionFuncs.cpp"
  "${sdir}/processing/src/scrolldetection/ScrollDetectionFuncs.h"
  "${sdir}/processing/src/vaacalc/vaacalcfuncs.cpp"
  "${sdir}/processing/src/vaacalc/vaacalculation.cpp"
  "${sdir}/processing/src/vaacalc/vaacalculation.h"
)

set(openh264_processing_sources_asm_arm64
  "${sdir}/processing/src/arm64/adaptive_quantization_aarch64_neon.S"
  "${sdir}/processing/src/arm64/down_sample_aarch64_neon.S"
  "${sdir}/processing/src/arm64/pixel_sad_aarch64_neon.S"
  "${sdir}/processing/src/arm64/vaa_calc_aarch64_neon.S"
)

set(openh264_encoder_sources
  "${sdir}/encoder/core/inc/as264_common.h"
  "${sdir}/encoder/core/inc/au_set.h"
  "${sdir}/encoder/core/inc/deblocking.h"
  "${sdir}/encoder/core/inc/decode_mb_aux.h"
  "${sdir}/encoder/core/inc/dq_map.h"
  "${sdir}/encoder/core/inc/encode_mb_aux.h"
  "${sdir}/encoder/core/inc/encoder.h"
  "${sdir}/encoder/core/inc/encoder_context.h"
  "${sdir}/encoder/core/inc/extern.h"
  "${sdir}/encoder/core/inc/get_intra_predictor.h"
  "${sdir}/encoder/core/inc/mb_cache.h"
  "${sdir}/encoder/core/inc/md.h"
  "${sdir}/encoder/core/inc/mt_defs.h"
  "${sdir}/encoder/core/inc/mv_pred.h"
  "${sdir}/encoder/core/inc/nal_encap.h"
  "${sdir}/encoder/core/inc/param_svc.h"
  "${sdir}/encoder/core/inc/parameter_sets.h"
  "${sdir}/encoder/core/inc/paraset_strategy.h"
  "${sdir}/encoder/core/inc/picture.h"
  "${sdir}/encoder/core/inc/picture_handle.h"
  "${sdir}/encoder/core/inc/rc.h"
  "${sdir}/encoder/core/inc/ref_list_mgr_svc.h"
  "${sdir}/encoder/core/inc/sample.h"
  "${sdir}/encoder/core/inc/set_mb_syn_cabac.h"
  "${sdir}/encoder/core/inc/set_mb_syn_cavlc.h"
  "${sdir}/encoder/core/inc/slice.h"
  "${sdir}/encoder/core/inc/slice_multi_threading.h"
  "${sdir}/encoder/core/inc/stat.h"
  "${sdir}/encoder/core/inc/svc_base_layer_md.h"
  "${sdir}/encoder/core/inc/svc_enc_frame.h"
  "${sdir}/encoder/core/inc/svc_enc_golomb.h"
  "${sdir}/encoder/core/inc/svc_enc_macroblock.h"
  "${sdir}/encoder/core/inc/svc_enc_slice_segment.h"
  "${sdir}/encoder/core/inc/svc_encode_mb.h"
  "${sdir}/encoder/core/inc/svc_encode_slice.h"
  "${sdir}/encoder/core/inc/svc_mode_decision.h"
  "${sdir}/encoder/core/inc/svc_motion_estimate.h"
  "${sdir}/encoder/core/inc/svc_set_mb_syn.h"
  "${sdir}/encoder/core/inc/svc_set_mb_syn_cavlc.h"
  "${sdir}/encoder/core/inc/vlc_encoder.h"
  "${sdir}/encoder/core/inc/wels_common_basis.h"
  "${sdir}/encoder/core/inc/wels_const.h"
  "${sdir}/encoder/core/inc/wels_func_ptr_def.h"
  "${sdir}/encoder/core/inc/wels_preprocess.h"
  "${sdir}/encoder/core/inc/wels_task_base.h"
  "${sdir}/encoder/core/inc/wels_task_encoder.h"
  "${sdir}/encoder/core/inc/wels_task_management.h"
  "${sdir}/encoder/core/inc/wels_transpose_matrix.h"
  "${sdir}/encoder/core/src/au_set.cpp"
  "${sdir}/encoder/core/src/deblocking.cpp"
  "${sdir}/encoder/core/src/decode_mb_aux.cpp"
  "${sdir}/encoder/core/src/encode_mb_aux.cpp"
  "${sdir}/encoder/core/src/encoder.cpp"
  "${sdir}/encoder/core/src/encoder_data_tables.cpp"
  "${sdir}/encoder/core/src/encoder_ext.cpp"
  "${sdir}/encoder/core/src/get_intra_predictor.cpp"
  "${sdir}/encoder/core/src/md.cpp"
  "${sdir}/encoder/core/src/mv_pred.cpp"
  "${sdir}/encoder/core/src/nal_encap.cpp"
  "${sdir}/encoder/core/src/paraset_strategy.cpp"
  "${sdir}/encoder/core/src/picture_handle.cpp"
  "${sdir}/encoder/core/src/ratectl.cpp"
  "${sdir}/encoder/core/src/ref_list_mgr_svc.cpp"
  "${sdir}/encoder/core/src/sample.cpp"
  "${sdir}/encoder/core/src/set_mb_syn_cabac.cpp"
  "${sdir}/encoder/core/src/set_mb_syn_cavlc.cpp"
  "${sdir}/encoder/core/src/slice_multi_threading.cpp"
  "${sdir}/encoder/core/src/svc_base_layer_md.cpp"
  "${sdir}/encoder/core/src/svc_enc_slice_segment.cpp"
  "${sdir}/encoder/core/src/svc_encode_mb.cpp"
  "${sdir}/encoder/core/src/svc_encode_slice.cpp"
  "${sdir}/encoder/core/src/svc_mode_decision.cpp"
  "${sdir}/encoder/core/src/svc_motion_estimate.cpp"
  "${sdir}/encoder/core/src/svc_set_mb_syn_cabac.cpp"
  "${sdir}/encoder/core/src/svc_set_mb_syn_cavlc.cpp"
  "${sdir}/encoder/core/src/wels_preprocess.cpp"
  "${sdir}/encoder/core/src/wels_task_base.cpp"
  "${sdir}/encoder/core/src/wels_task_encoder.cpp"
  "${sdir}/encoder/core/src/wels_task_management.cpp"
  "${sdir}/encoder/plus/inc/welsEncoderExt.h"
  "${sdir}/encoder/plus/src/welsEncoderExt.cpp"

  # Note: Purposefully excluded: 'src/codec/encoder/plus/src/DllEntry.cpp',
  # This file is not built by the OpenH264 original build files.
)

set(openh264_encoder_sources_asm_arm64
  "${sdir}/encoder/core/arm64/intra_pred_aarch64_neon.S"
  "${sdir}/encoder/core/arm64/intra_pred_sad_3_opt_aarch64_neon.S"
  "${sdir}/encoder/core/arm64/memory_aarch64_neon.S"
  "${sdir}/encoder/core/arm64/pixel_aarch64_neon.S"
  "${sdir}/encoder/core/arm64/reconstruct_aarch64_neon.S"
  "${sdir}/encoder/core/arm64/svc_motion_estimation_aarch64_neon.S"
)

set(openh264_cflags, "Wno-format -Wno-format-security -Wno-header-hygiene -Wno-unused-function -Wno-unused-value")

set(openh264_define "-DANDROID_NDK")
##add_definitions(${openh264_define})

set(CMAKE_C_FLAGS ${CMAKE_C_FLAGS} ${openh264_cflags})



add_library(openh264 STATIC ${openh264_common_sources} ${openh264_processing_sources} ${openh264_encoder_sources})

##target_link_libraries(openh264, cpufeatures)


