cmake_minimum_required(VERSION 3.4.1)
ENABLE_LANGUAGE(ASM)

##add_subdirectory(../opus)


set(dir "${WEBRTC_REPO}/third_party/ffmpeg")

##generate from ffmpeg_generated.gni
set(ffmpeg_c_sources
    "${dir}/libavcodec/ac3_parser.c"
    "${dir}/libavcodec/ac3tab.c"
    "${dir}/libavcodec/adts_parser.c"
    "${dir}/libavcodec/allcodecs.c"
    "${dir}/libavcodec/autorename_libavcodec_flacdec.c"
    "${dir}/libavcodec/autorename_libavcodec_flacdsp.c"
    "${dir}/libavcodec/autorename_libavcodec_mpegaudiodsp.c"
	"${dir}/libavcodec/autorename_libavcodec_utils.c"
    "${dir}/libavcodec/autorename_libavcodec_vorbisdsp.c"
    "${dir}/libavcodec/avdct.c"
    "${dir}/libavcodec/avfft.c"
    "${dir}/libavcodec/avpacket.c"
    "${dir}/libavcodec/avpicture.c"
    "${dir}/libavcodec/bitstream.c"
    "${dir}/libavcodec/bitstream_filter.c"
    "${dir}/libavcodec/bitstream_filters.c"
    "${dir}/libavcodec/bsf.c"
    "${dir}/libavcodec/codec_desc.c"
    "${dir}/libavcodec/d3d11va.c"
    "${dir}/libavcodec/dct.c"
    "${dir}/libavcodec/dct32_fixed.c"
    "${dir}/libavcodec/dct32_float.c"
    "${dir}/libavcodec/decode.c"
    "${dir}/libavcodec/dirac.c"
    "${dir}/libavcodec/dv_profile.c"
    "${dir}/libavcodec/encode.c"
    "${dir}/libavcodec/fft_fixed.c"
    "${dir}/libavcodec/fft_fixed_32.c"
    "${dir}/libavcodec/fft_float.c"
    "${dir}/libavcodec/fft_init_table.c"
    "${dir}/libavcodec/flac.c"
    "${dir}/libavcodec/flac_parser.c"
    "${dir}/libavcodec/flacdata.c"
    "${dir}/libavcodec/golomb.c"
    "${dir}/libavcodec/imgconvert.c"
    "${dir}/libavcodec/jni.c"
    "${dir}/libavcodec/libopus.c"
    "${dir}/libavcodec/libopusdec.c"
    "${dir}/libavcodec/mathtables.c"
    "${dir}/libavcodec/mdct_fixed.c"
    "${dir}/libavcodec/mdct_fixed_32.c"
    "${dir}/libavcodec/mdct_float.c"
    "${dir}/libavcodec/mediacodec.c"
    "${dir}/libavcodec/mjpegenc_huffman.c"
    "${dir}/libavcodec/mpeg12framerate.c"
    "${dir}/libavcodec/mpeg4audio.c"
    "${dir}/libavcodec/mpegaudio.c"
    "${dir}/libavcodec/mpegaudio_parser.c"
    "${dir}/libavcodec/mpegaudiodata.c"
    "${dir}/libavcodec/mpegaudiodec_fixed.c"
    "${dir}/libavcodec/mpegaudiodecheader.c"
    "${dir}/libavcodec/mpegaudiodsp_data.c"
    "${dir}/libavcodec/mpegaudiodsp_fixed.c"
    "${dir}/libavcodec/mpegaudiodsp_float.c"
    "${dir}/libavcodec/null_bsf.c"
    "${dir}/libavcodec/options.c"
    "${dir}/libavcodec/opus.c"
    "${dir}/libavcodec/opus_parser.c"
    "${dir}/libavcodec/opus_rc.c"
    "${dir}/libavcodec/opustab.c"
    "${dir}/libavcodec/parser.c"
    "${dir}/libavcodec/parsers.c"
    "${dir}/libavcodec/pcm.c"
    "${dir}/libavcodec/profiles.c"
    "${dir}/libavcodec/pthread.c"
    "${dir}/libavcodec/pthread_frame.c"
    "${dir}/libavcodec/pthread_slice.c"
    "${dir}/libavcodec/qsv_api.c"
    "${dir}/libavcodec/raw.c"
    "${dir}/libavcodec/rdft.c"
    "${dir}/libavcodec/vorbis.c"
    "${dir}/libavcodec/vorbis_data.c"
    "${dir}/libavcodec/vorbis_parser.c"
    "${dir}/libavcodec/vorbisdec.c"
    "${dir}/libavcodec/vp9_parser.c"
    "${dir}/libavcodec/xiph.c"
    "${dir}/libavformat/allformats.c"
    "${dir}/libavformat/autorename_libavformat_options.c"
    "${dir}/libavformat/autorename_libavformat_pcm.c"
    "${dir}/libavformat/autorename_libavformat_utils.c"
    "${dir}/libavformat/avio.c"
    "${dir}/libavformat/aviobuf.c"
    "${dir}/libavformat/cutils.c"
    "${dir}/libavformat/dump.c"
    "${dir}/libavformat/flac_picture.c"
    "${dir}/libavformat/flacdec.c"
    "${dir}/libavformat/format.c"
    "${dir}/libavformat/id3v1.c"
    "${dir}/libavformat/id3v2.c"
    "${dir}/libavformat/isom.c"
    "${dir}/libavformat/matroska.c"
    "${dir}/libavformat/matroskadec.c"
    "${dir}/libavformat/metadata.c"
    "${dir}/libavformat/mov.c"
    "${dir}/libavformat/mov_chan.c"
    "${dir}/libavformat/mov_esds.c"
    "${dir}/libavformat/mp3dec.c"
    "${dir}/libavformat/mux.c"
    "${dir}/libavformat/oggdec.c"
    "${dir}/libavformat/oggparseflac.c"
    "${dir}/libavformat/oggparseogm.c"
    "${dir}/libavformat/oggparseopus.c"
    "${dir}/libavformat/oggparseskeleton.c"
    "${dir}/libavformat/oggparsetheora.c"
    "${dir}/libavformat/oggparsevorbis.c"
    "${dir}/libavformat/oggparsevp8.c"
    "${dir}/libavformat/os_support.c"
    "${dir}/libavformat/protocols.c"
    "${dir}/libavformat/qtpalette.c"
    "${dir}/libavformat/rawdec.c"
    "${dir}/libavformat/replaygain.c"
    "${dir}/libavformat/riff.c"
    "${dir}/libavformat/riffdec.c"
    "${dir}/libavformat/rmsipr.c"
    "${dir}/libavformat/url.c"
    "${dir}/libavformat/vorbiscomment.c"
    "${dir}/libavformat/wavdec.c"
    "${dir}/libavutil/aes.c"
    "${dir}/libavutil/aes_ctr.c"
    "${dir}/libavutil/autorename_libavutil_cpu.c"
    "${dir}/libavutil/autorename_libavutil_fixed_dsp.c"
    "${dir}/libavutil/autorename_libavutil_float_dsp.c"
    "${dir}/libavutil/autorename_libavutil_imgutils.c"
    "${dir}/libavutil/avsscanf.c"
    "${dir}/libavutil/avstring.c"
    "${dir}/libavutil/base64.c"
    "${dir}/libavutil/bprint.c"
    "${dir}/libavutil/buffer.c"
    "${dir}/libavutil/camellia.c"
    "${dir}/libavutil/channel_layout.c"
    "${dir}/libavutil/color_utils.c"
    "${dir}/libavutil/crc.c"
    "${dir}/libavutil/dict.c"
    "${dir}/libavutil/display.c"
    "${dir}/libavutil/downmix_info.c"
    "${dir}/libavutil/encryption_info.c"
    "${dir}/libavutil/error.c"
    "${dir}/libavutil/eval.c"
    "${dir}/libavutil/fifo.c"
    "${dir}/libavutil/file_open.c"
    "${dir}/libavutil/frame.c"
    "${dir}/libavutil/hdr_dynamic_metadata.c"
    "${dir}/libavutil/hwcontext.c"
    "${dir}/libavutil/integer.c"
    "${dir}/libavutil/intmath.c"
    "${dir}/libavutil/lfg.c"
    "${dir}/libavutil/log.c"
    "${dir}/libavutil/log2_tab.c"
    "${dir}/libavutil/mastering_display_metadata.c"
    "${dir}/libavutil/mathematics.c"
    "${dir}/libavutil/md5.c"
    "${dir}/libavutil/mem.c"
    "${dir}/libavutil/opt.c"
    "${dir}/libavutil/parseutils.c"
    "${dir}/libavutil/pixdesc.c"
    "${dir}/libavutil/pixelutils.c"
    "${dir}/libavutil/random_seed.c"
    "${dir}/libavutil/rational.c"
    "${dir}/libavutil/reverse.c"
    "${dir}/libavutil/samplefmt.c"
    "${dir}/libavutil/sha.c"
    "${dir}/libavutil/slicethread.c"
    "${dir}/libavutil/spherical.c"
    "${dir}/libavutil/stereo3d.c"
    "${dir}/libavutil/tea.c"
    "${dir}/libavutil/threadmessage.c"
    "${dir}/libavutil/time.c"
    "${dir}/libavutil/timecode.c"
    "${dir}/libavutil/twofish.c"
    "${dir}/libavutil/utils.c"

    "${dir}/libavcodec/hpeldsp.c"
    "${dir}/libavcodec/videodsp.c"
    "${dir}/libavcodec/vp3dsp.c"
    "${dir}/libavcodec/vp8dsp.c"
    "${dir}/libavcodec/h264pred.c"
    "${dir}/libavcodec/vp3.c"
    "${dir}/libavcodec/vp3_parser.c"
    "${dir}/libavcodec/vp56rac.c"
    "${dir}/libavcodec/vp8.c"
    "${dir}/libavcodec/vp8_parser.c"

    "${dir}/libavcodec/aac_ac3_parser.c"
    "${dir}/libavcodec/aac_parser.c"
    "${dir}/libavcodec/aacps_float.c"
    "${dir}/libavcodec/aacpsdsp_float.c"
    "${dir}/libavcodec/aacsbr.c"
    "${dir}/libavcodec/aactab.c"
    "${dir}/libavcodec/adts_header.c"
    "${dir}/libavcodec/autorename_libavcodec_aacdec.c"
    "${dir}/libavcodec/autorename_libavcodec_mdct15.c"
    "${dir}/libavcodec/autorename_libavcodec_sbrdsp.c"
    "${dir}/libavcodec/cbrt_data.c"
    "${dir}/libavcodec/kbdwin.c"
    "${dir}/libavcodec/sinewin.c"
    "${dir}/libavcodec/sinewin_fixed.c"
    "${dir}/libavformat/aacdec.c"
    "${dir}/libavformat/apetag.c"
    "${dir}/libavformat/img2.c"

    "${dir}/libavcodec/cabac.c"
    "${dir}/libavcodec/h2645_parse.c"
    "${dir}/libavcodec/h264_cabac.c"
    "${dir}/libavcodec/h264_cavlc.c"
    "${dir}/libavcodec/h264_direct.c"
    "${dir}/libavcodec/h264_loopfilter.c"
    "${dir}/libavcodec/h264_mb.c"
    "${dir}/libavcodec/h264_parse.c"
    "${dir}/libavcodec/h264_parser.c"
    "${dir}/libavcodec/h264_picture.c"
    "${dir}/libavcodec/h264_ps.c"
    "${dir}/libavcodec/h264_refs.c"
    "${dir}/libavcodec/h264_sei.c"
    "${dir}/libavcodec/h264_slice.c"
    "${dir}/libavcodec/h264chroma.c"
    "${dir}/libavcodec/h264data.c"
    "${dir}/libavcodec/h264dec.c"
    "${dir}/libavcodec/h264dsp.c"
    "${dir}/libavcodec/h264idct.c"
    "${dir}/libavcodec/h264qpel.c"
    "${dir}/libavcodec/startcode.c"

    "${dir}/compat/strtod.c"

    "${dir}/libavcodec/acelp_filters.c"
    "${dir}/libavcodec/acelp_pitch_delay.c"
    "${dir}/libavcodec/acelp_vectors.c"
    "${dir}/libavcodec/amrnbdec.c"
    "${dir}/libavcodec/amrwbdec.c"
    "${dir}/libavcodec/autorename_libavcodec_blockdsp.c"
    "${dir}/libavcodec/autorename_libavcodec_idctdsp.c"
    "${dir}/libavcodec/autorename_libavcodec_me_cmp.c"
    "${dir}/libavcodec/autorename_libavcodec_mpegvideo.c"
    "${dir}/libavcodec/autorename_libavcodec_mpegvideodsp.c"
    "${dir}/libavcodec/autorename_libavcodec_pixblockdsp.c"
    "${dir}/libavcodec/autorename_libavcodec_qpeldsp.c"
    "${dir}/libavcodec/autorename_libavcodec_simple_idct.c"
    "${dir}/libavcodec/autorename_libavcodec_xvididct.c"
    "${dir}/libavcodec/celp_filters.c"
    "${dir}/libavcodec/celp_math.c"
    "${dir}/libavcodec/error_resilience.c"
    "${dir}/libavcodec/exif.c"
    "${dir}/libavcodec/fdctdsp.c"
    "${dir}/libavcodec/flvdec.c"
    "${dir}/libavcodec/gsm_parser.c"
    "${dir}/libavcodec/gsmdec.c"
    "${dir}/libavcodec/gsmdec_data.c"
    "${dir}/libavcodec/h263.c"
    "${dir}/libavcodec/h263_parser.c"
    "${dir}/libavcodec/h263data.c"
    "${dir}/libavcodec/h263dec.c"
    "${dir}/libavcodec/h263dsp.c"
    "${dir}/libavcodec/intelh263dec.c"
    "${dir}/libavcodec/ituh263dec.c"
    "${dir}/libavcodec/jfdctfst.c"
    "${dir}/libavcodec/jfdctint.c"
    "${dir}/libavcodec/jrevdct.c"
    "${dir}/libavcodec/lsp.c"
    "${dir}/libavcodec/mpeg4video.c"
    "${dir}/libavcodec/mpeg4video_parser.c"
    "${dir}/libavcodec/mpeg4videodec.c"
    "${dir}/libavcodec/mpeg_er.c"
    "${dir}/libavcodec/mpegpicture.c"
    "${dir}/libavcodec/mpegutils.c"
    "${dir}/libavcodec/mpegvideo_motion.c"
    "${dir}/libavcodec/mpegvideodata.c"
    "${dir}/libavcodec/msgsmdec.c"
    "${dir}/libavcodec/rl.c"
    "${dir}/libavcodec/tiff_common.c"
    "${dir}/libavformat/amr.c"
    "${dir}/libavformat/avidec.c"

    "${dir}/libavcodec/aarch64/fft_init_aarch64.c"
    "${dir}/libavcodec/aarch64/mpegaudiodsp_init.c"
    "${dir}/libavcodec/aarch64/vorbisdsp_init.c"
    "${dir}/libavutil/aarch64/cpu.c"
    "${dir}/libavutil/aarch64/float_dsp_init.c"

    "${dir}/libavcodec/aarch64/h264pred_init.c"
    "${dir}/libavcodec/aarch64/hpeldsp_init_aarch64.c"
    "${dir}/libavcodec/aarch64/videodsp_init.c"
    "${dir}/libavcodec/aarch64/vp8dsp_init_aarch64.c"

    "${dir}/libavcodec/aarch64/aacpsdsp_init_aarch64.c"
    "${dir}/libavcodec/aarch64/sbrdsp_init_aarch64.c"

    "${dir}/libavcodec/aarch64/h264chroma_init_aarch64.c"
    "${dir}/libavcodec/aarch64/h264dsp_init_aarch64.c"
    "${dir}/libavcodec/aarch64/h264qpel_init_aarch64.c"

    "${dir}/libavcodec/neon/autorename_libavcodec_neon_mpegvideo.c"

    "${dir}/libavcodec/aarch64/idctdsp_init_aarch64.c"

	"${dir}/libavcodec/utils.c"
)

set(ffmpeg_gas_sources
    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_fft_neon.S"
    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_mdct_neon.S"
    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_vorbisdsp_neon.S"
    "${dir}/libavcodec/aarch64/mpegaudiodsp_neon.S"
    "${dir}/libavutil/aarch64/autorename_libavutil_aarch64_float_dsp_neon.S"

    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_h264pred_neon.S"
    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_hpeldsp_neon.S"
    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_vp8dsp_neon.S"
    "${dir}/libavcodec/aarch64/videodsp.S"

    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_aacpsdsp_neon.S"
    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_sbrdsp_neon.S"

    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_h264cmc_neon.S"
    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_h264dsp_neon.S"
    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_h264idct_neon.S"
    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_h264qpel_neon.S"

    "${dir}/libavcodec/aarch64/autorename_libavcodec_aarch64_simple_idct_neon.S"
)


set(ffmpeg_branding "Chrome")
set(os_config "android")
set(ffmpeg_arch "arm64")
set(platform_config_root "${dir}/chromium/config/${ffmpeg_branding}/${os_config}/${ffmpeg_arch}") 
#set(platform_config_root "${dir}/chromium/config/Chrome/android/arm64") 
#set(platform_config_root "${WEBRTC_REPO}/third_party/ffmpeg/chromium/config/Chrome/android/arm64") 


include_directories(${platform_config_root})
include_directories(${dir}/compat/atomics/gcc)
include_directories(${dir})

include_directories(${WEBRTC_REPO}/third_party/opus/src/include)

set(ffmpeg_warnings, 
     "-Wno-absolute-value
     -Wno-deprecated-declarations
     -Wno-incompatible-pointer-types
     -Wno-logical-op-parentheses
     -Wno-parentheses
     -Wno-pointer-sign
     -Wno-switch
     -Wno-unused-label
     -Wno-unused-variable
     -Wno-string-conversion
     -Wno-sometimes-uninitialized
     -Wno-unguarded-availability
     -Wno-unused-function
     -Wno-constant-conversion
     -Wno-string-plus-int"
)

set(ffmpeg_cflags_extern, "-fPIC -fomit-frame-pointer -Wno-deprecated-declarations -std=c99 -pthread -fno-math-errno -fno-signed-zeros -fno-tree-vectorize")

set(internal_define "-DHAVE_AV_CONFIG_H -D_POSIX_C_SOURCE=200112 -D_XOPEN_SOURCE=600 -DPIC -DFFMPEG_CONFIGURATION=NULL -DHAVE_VFP_ARGS=1 -D_ISOC99_SOURCE -D_LARGEFILE_SOURCE")
add_definitions(${internal_define})

set(CMAKE_C_FLAGS ${CMAKE_C_FLAGS} ${ffmpeg_warnings} ${ffmpeg_cflags_extern})

##message("@@@ffmpeg_c_sources is "${ffmpeg_c_sources})

#set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH})
set(ffmpeg_h_sources "${platform_config_root}/config.h" "${platform_config_root}/libavutil/avconfig.h")
add_library(ffmpeg STATIC ${ffmpeg_c_sources} ${ffmpeg_gas_sources} ${ffmpeg_h_sources})

target_link_libraries(ffmpeg m z)


