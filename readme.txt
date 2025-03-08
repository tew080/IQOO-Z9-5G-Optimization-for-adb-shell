version 1.0 

install: adb shell sh /sdcard/run_144.0.sh

uinstall: Reboot

feature:

adb shell cmd package compile -m speed -f -a

adb shell am broadcast -a \"com.google.android.gms.phenotype.FLAG_OVERRIDE\" --es package \"com.google.android.platform.runtime_native\" --es user \"\*\" --esa flags \"usap_pool_enabled\" --esa values \"true\" --esa types \"string\" com.google.android.gms

adb shell device_config put game_overlay com.miHoYo.GenshinImpact mode=2,downscaleFactor=0.5,fps=144,loadingBoost=5000

:mode=3,downscaleFactor=0.5,fps=144,loadingBoost=500  

adb shell device_config put game_overlay com.garena.game.kgth mode=2,downscaleFactor=0.5,fps=144,loadingBoost=5000

:mode=3,downscaleFactor=0.5,fps=90,loadingBoost=500 

adb shell cmd game mode performance com.miHoYo.GenshinImpact
adb shell cmd game mode performance com.garena.game.kgth