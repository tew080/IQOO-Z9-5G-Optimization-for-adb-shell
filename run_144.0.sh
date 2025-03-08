#!/bin/bash

# Display a notification about script completion
cmd notification post -S bigtext -t 'notification' 'Tag' '🚀 installing funtouch Os optimizer wait & enjoy!! 🎉' > /dev/null 2>&1
echo ""
echo ""

# Display device information
echo ""
echo "Device Information"
echo "-----------------------"
echo "• Baseband Version  ➜ $(getprop gsm.version.baseband)"
sleep 0.1
echo "• Kernel            ➜ $(uname -r)"
sleep 0.1
echo "• Android SDK       ➜ $(getprop ro.build.version.sdk)"
sleep 0.1
echo "• Android Version   ➜ $(getprop ro.build.version.release)"
sleep 0.1
echo "• Device Model      ➜ $(getprop ro.product.model)"
sleep 0.1
echo "• Brand             ➜ $(getprop ro.product.brand)"
sleep 0.1
echo "• Model             ➜ $(getprop ro.product.model)"
sleep 0.1
echo "• Product           ➜ $(getprop ro.build.product)"
sleep 0.1
echo "• Hardware          ➜ $(getprop ro.hardware)"
sleep 0.1
echo "• GPU               ➜ $(getprop ro.opengles.version)"
sleep 0.1
echo "• CPU               ➜ $(getprop ro.product.cpu.abi)"
sleep 0.1
echo "• Build             ➜ $(getprop ro.build.description)"
sleep 0.1
#####
echo "Installing Funtouch Os optimizer...[✓]"
sleep 1
setprop log.tag.V 0
setprop log.tag.D 0
settings put system anr_debugging_mechanism 0
settings put global dolby_a2sd_idx 1
settings put global dolby_speaker_idx 1
settings put global hwc.dynThresolds 4.4
settings put global vivo_settings_realtime_steps 0
settings put global use_data_network_acclerate 1
settings put global zram_enabled 1
settings put global netstats_enabled 0
cmd looper_stats disable
cmd device_config put runtime_native_boot disable_lock_profiling true
cmd device_config put runtime_native_boot iorap_readahead_enable true
cmd settings put global fstrim_mandatory_interval 3600
cmd power set-fixed-performance-mode-enabled true
cmd activity idle-maintenance
cmd thermalservice override-status 0
#####
echo "Installing Tweak Network optimization...[✓]"
sleep 1
settings put global network_recommendations_enabled 0
settings put global network_scoring_ui_enabled 0
settings put global tether_offload_disabled 0
settings put global wifi_power_save 0
settings put global enable_cellular_on_boot 1
settings put global mobile_data_always_on 0
settings put global ble_scan_always_enabled 0
settings put global preferred_network_mode 9,9
#####
echo "Installing Tweak Refresh 144.0 optimization...[✓]"
sleep 1
settings put global vivo_screen_refresh_rate_mode 144
settings put system user_refresh_rate 144.0
settings put system min_refresh_rate 144.0
settings put system max_refresh_rate 144.0
settings put system thermal_limit_refresh_rate 144.0
#####
echo "Installing Tweak Game optimization...[✓]"
sleep 1
cmd device_config put game_overlay com.miHoYo.GenshinImpact mode=2,downscaleFactor=0.8,fps=999:mode=3,downscaleFactor=0.8,fps=999,loadingBoost=999999999      
cmd device_config put game_overlay com.garena.game.kgth mode=2,downscaleFactor=0.8,fps=999:mode=3,downscaleFactor=0.8,fps=999,loadingBoost=999999999      
settings put system game_scene_more_fps 1
settings put system is_game_mode 1
settings put system game_mode 1
settings put global gpu_max_freq_mode 1
settings put system gamecube_frame_interpolation 1:4:com.miHoYo.GenshinImpact:60:144
settings put system gamecube_frame_interpolation_for_sr 1:4:com.miHoYo.GenshinImpact:60:144
setprop debug.sf.hw 1
setprop debug.egl.hw 1
setprop debug.overlayui 1
setprop debug.sf.showfps 0
setprop debug.sf.showcpu 0
setprop debug.qc.hardware true
setprop debug.hwui.fps_divisor 1
setprop debug.sf.showupdates 0
setprop debug.hwui.renderer skiagl
setprop debug.cpurend.vsync false
setprop debug.performance.tuning 1
setprop debug.sf.showbackground 0
setprop debug.composition.type gpu
setprop debug.rs.qcom.noobjcache 1
setprop debug.rs.qcom.force_finish 1
setprop debug.rs.qcom.disable_flex 1
setprop debug.rs.qcom.adrenoboost 1
setprop debug.hwui.disable_vsync true
setprop debug.hwui.render_thread true
setprop debug.rs.qcom.nointrinsicblur 1
setprop debug.rs.qcom.nointrinsicblas 1
setprop debug.rs.qcom.use_fast_math 1
setprop debug.skia.threaded_mode true
setprop debug.hwui.use_buffer_age false
setprop debug.skia.num_render_threads 1
setprop debug.hwui.render_thread_count 1
setprop debug.hwui.disable_draw_defer true
setprop debug.hwui.show_dirty_regions false
setprop debug.hwui.render_dirty_regions false
setprop debug.hwui.skia_tracing_enabled false
setprop debug.hwui.disable_draw_reorder true
setprop debug.hwui.trace_gpu_resources false
setprop debug.skia.render_thread_priority true
setprop debug.hwui.target_cpu_time_percent 1
setprop debug.hwui.use_gpu_pixel_buffers true
setprop debug.sf.early_phase_offset_ns 500000
setprop debug.renderengine.backend skiaglthreaded
setprop debug.sf.early_gl_phase_offset_ns 3000000
setprop debug.sf.early_app_phase_offset_ns 500000
setprop debug.sf.early_gl_app_phase_offset_ns 15000000
setprop debug.sf.high_fps_early_phase_offset_ns 6100000
setprop debug.sf.high_fps_early_gl_phase_offset_ns 650000
setprop debug.sf.high_fps_late_app_phase_offset_ns 100000
setprop debug.sf.phase_offset_threshold_for_next_vsync_ns 6100000
#####
echo "Installing Tweak Touch optimization...[✓]"
sleep 1
settings put secure tap_duration_threshold 0.0
settings put secure touch_blocking_period 0.0
settings put secure long_press_timeout 250
settings put secure multi_press_timeout 250
settings put system pointer_speed 7
#####
#echo "Installing Tweak GPU optimization...[✓]"
#sleep 1
#setprop debug.hwui.renderer vulkan
#setprop debug.rs.shader SPIR-V
#setprop debug.hw.vsync 0
#setprop debug.generate-debug-info false
#setprop debug.egl.traceGpuCompletion false
#setprop persist.log.tag.snet_event_log ""
#setprop persist.log.tag ""
#setprop debug.sf.use_frame_rate_priority 1
#setprop debug.rs.visual vulkan
#setprop debug.hwui.fps_divisor 1
#####
echo "Installing Tweak App optimization...[✓]"
echo ""
sleep 1
pm compile -m speed-profile --full -a
cmd package bg-dexopt-job 
pm trim-caches 999999999999999999
#####
echo ""
echo ""
echo "All tweaks successfully installed [✓].[✓].[✓]"
echo ""
sleep 0.5   

cmd notification post -S bigtext -t 'notification' 'Tag' '🚀 succes installing optimizer enjoy!! 🎉' > /dev/null 2>&1
