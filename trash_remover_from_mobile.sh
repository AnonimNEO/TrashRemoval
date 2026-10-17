#!/bin/bash

apps=(
    "com.google.android.calendar"
    "com.android.providers.calendar"
    "com.android.emergency"

    "com.google.android.as"
    "com.google.android.setupwizard"
    "com.google.android.apps.assistant"
    "com.google.android.speech.recognition.api"
    "com.google.android.apps.work.oobconfig"

    # Facebook
    "com.facebook.appmanager"
    "com.facebook.services"
    "com.facebook.system"
    "com.facebook.katana"

    # Google (реклама и отслеживание)
    "com.google.android.apps.wellbeing"
    "com.google.android.feedback"
    "com.google.android.gms.location.history"
    "com.google.android.apps.searchlite"
    "com.google.android.apps.restore"
    "com.google.android.gms"
    "com.google.android.androidquicksearchbox"
    "com.google.android.apps.maps"
    "com.google.android.apps.docs"
    "com.google.android.apps.photos"
    "com.google.android.apps.mediashell"
    "com.google.android.apps.messaging"
    "com.google.android.apps.tachyon"
    "com.google.android.apps.googleassistant"
    "com.google.android.apps.genie.geniewidget"
    "com.google.android.apps.subscriptions.red"
    "com.google.android.apps.youtube.music"
    "com.google.android.youtube"
    "com.google.android.apps.youtube.kids"
    "com.google.android.apps.fitness"
    "com.google.android.apps.pixelmigrate"
    "com.google.android.apps.pixelbuds"
    "com.google.android.apps.recorder"
    "com.google.android.apps.safetyhub"
    "com.google.android.apps.wallpaper"
    "com.google.android.apps.wallpaper.nexus"
    "com.google.android.android.calendar"
    "com.google.android.contacts"
    "com.google.android.deskclock"
    "com.google.android.dialer"
    "com.google.android.gms.location_history_service"
    "com.google.android.gms.policy_sidecar_aps"
    "com.google.android.gms.policy_sidecar_as"
    "com.google.android.gms.setup"
    "com.google.android.gms.supervision"
    "com.google.android.googlequicksearchbox"
    "com.google.android.inputmethod.latin"
    "com.google.android.marvin.talkback"
    "com.google.android.projection.gearhead"
    "com.google.android.soundpicker"
    "com.google.android.syncadapters.calendar"
    "com.google.android.syncadapters.contacts"
    "com.google.android.tv.remote.service"
    "com.google.android.tvlauncher"
    "com.google.android.wearable.app"
    "com.google.ar.core"
    "com.google.ar.lens"
    "com.google.devtools.build.android.gapid.gapir"
    "com.google.intelligence.sense"
    "com.google.mainline.telemetry"
    "com.google.mlkit.translate"
    "com.google.android.apps.googlego"
    "com.google.android.apps.chromecast.app"
    "com.google.android.apps.chromecast.app.phone"
    "com.google.android.apps.chromecast.app.tablet"
    "com.google.android.apps.chromecast.app.wearable"
    "com.google.android.apps.chromecast.app.auto"
    "com.google.android.apps.chromecast.app.tv"
    "com.google.android.apps.chromecast.app.tv.remote"
    "com.google.android.apps.chromecast.app.tv.remote.service"
    "com.google.android.apps.chromecast.app.tv.remote.service.phone"
    "com.google.android.apps.chromecast.app.tv.remote.service.tablet"
    "com.google.android.apps.chromecast.app.tv.remote.service.wearable"
    "com.google.android.apps.chromecast.app.auto"
    "com.google.android.gms.location"
    "com.google.android.gms.location.history"
    "com.google.android.gms.location.history_service"
    "com.google.android.gms.policy_sidecar_aps"
    "com.google.android.gms.policy_sidecar_as"
    "com.google.android.gms.setup"
    "com.google.android.gms.supervision"
    "com.google.android.gms.wearable"
    "com.google.android.gms.wearable.app"
    "com.google.android.gms.wearable.service"
    "com.google.android.gms.wearable.service.phone"
    "com.google.android.gms.wearable.service.tablet"
    "com.google.android.gms.wearable.service.wearable"
    "com.google.android.gms.wearable.service.auto"
    "com.google.android.gms.wearable.service.tv"
    "com.google.android.gms.wearable.service.tv.remote"
    "com.google.android.gms.wearable.service.tv.remote.service"
    "com.google.android.gms.wearable.service.tv.remote.service.phone"
    "com.google.android.gms.wearable.service.tv.remote.service.tablet"
    "com.google.android.gms.wearable.service.tv.remote.service.wearable"
    "com.google.android.gms.wearable.service.tv.remote.service.auto"
    "com.google.android.gms.wearable.service.tv.remote.service.tv"
    "com.google.android.gms.clearcut_system_event_log"
    "com.google.android.gms.clearcut_system_event_log_service"
    "com.google.android.gms.clearcut_system_event_log_service_phone"
    "com.google.android.gms.clearcut_system_event_log_service_tablet"
    "com.google.android.gms.clearcut_system_event_log_service_wearable"
    "com.google.android.gms.clearcut_system_event_log_service_auto"
    "com.google.android.gms.clearcut_system_event_log_service_tv"
    "com.google.android.gms.clearcut_system_event_log_service_tv_remote"
    "com.google.android.gms.dck"
    "com.google.android.gms.dck_service"
    "com.google.android.gms.dck_service_phone"
    "com.google.android.gms.dck_service_tablet"
    "com.google.android.gms.dck_service_wearable"
    "com.google.android.gms.dck_service_auto"
    "com.google.android.gms.dck_service_tv"
    "com.google.android.gms.dck_service_tv_remote"
    "com.google.android.gms.dck_service_tv_remote_service"
    "com.google.android.gms.dck_service_tv_remote_service_phone"
    "com.google.android.gms.dck_service_tv_remote_service_tablet"
    "com.google.android.gms.dck_service_tv_remote_service_wearable"
    "com.google.android.gms.dck_service_tv_remote_service_auto"
    "com.google.android.gms.dck_service_tv_remote_service_tv"

    # Gmail
    "com.google.android.gm"
    "com.google.android.gm.exchange"

    # Google Photos
    "com.google.android.apps.photos"
    "com.google.android.apps.photosgo"

    # Google Recorder
    "com.google.android.apps.recorder"

    # Google Keep
    "com.google.android.keep"

    # Камера
    "com.android.camera"
    "com.android.camera2"
    "com.google.android.GoogleCamera"
    "com.google.android.apps.camera"

    # Google Play Music
    "com.google.android.music"
    "com.google.android.apps.mediashell"
    "com.google.android.apps.youtube.music"

    # Chrome
    #"com.android.chrome"
    #"com.google.android.apps.chrome"

    # Google Pay
    "com.google.android.apps.walletnfcrel"
    "com.google.android.apps.nbu.paisa.inapp"
    "com.google.android.apps.nbu.paisa.user"
    "com.google.android.gms.wallet"
    "com.google.android.gms.payments"
    "com.google.android.apps.paidtasks"
    "com.android.vending"

    # Google Play Фильмы
    "com.google.android.videos"
    "com.google.android.apps.mediashell"

    # WhatsApp
    "com.whatsapp"
    "com.whatsapp.w4b"

    # Яндекс
    "com.yandex.preinstallsatellite"
    "com.yandex.browser"
    "ru.yandex.searchplugin"

    # Heytap (OPPO маркет и сервисы)
    "com.heytap.browser"
    "com.heytap.market"
    "com.heytap.mcs"
    "com.heytap.openid"

    # Nearme (OPPO статистика)
    "com.nearme.statistics.rom"
    "com.nearme.romupdate"

    # Spreadtrum/Unisoc (инженерные утилиты)
    "com.sprd.engineermode"
    "com.sprd.logmanager"
    "com.sprd.omacp"
    "com.sprd.powersavemodelauncher"
    "com.sprd.uasetting"
    "com.sprd.validationtools"
    "com.sprd.compass"
    "com.sprd.quickcamera"
    "com.sprd.ImsConnectionManager"
    "com.spreadtrum.ims"
    "com.spreadtrum.proxy.nfwlocation"
    "com.spreadtrum.sgps"
    "com.spreadtrum.vowifi"
    "com.spreadtrum.vowifi.conf"
    "com.spreadtrum.vce"
    "com.unisoc.phone"
    "com.unisoc.storageclearmanager"
    "com.android.unisoc.telephony.server"
    "com.yha.engineersecret"
    "com.yha.factory"
    "com.yha.runtime"
    "com.oppo.engineermode.network"

    # Другое ненужное ПО
    "com.coloros.phonemanager"
    "com.oplus.phoneactivation"
    "com.oplus.batterywarning"
    #"com.oppo.engineermode"
    "com.oppo.engineermode.camera"
    "com.oppo.engineermode.network"
    "com.oppo.quicksearchbox"
    "com.oppoex.afterservice"
    "com.oppo.operationManual"
    "com.minsvyaz.applist"
    "com.glance.lockscreenRealmeLite"
    "com.preff.kb.op"
    "com.android.soundrecorder"
    "com.android.music"
    "com.android.overlay.fmradio"
    "com.android.overlay.camera2"
    "com.android.partnerbrowsercustomizations.example"
    "com.android.egg"
    #"com.android.bluetoothmidiservice"
    #"com.android.overlay.emergency"
    #"com.android.simappdialog"
    "com.igg.android.lordsmobile"
    "com.zhiliaoapp.musically" # вроде тик ток
    "ru.ivi.client"
    "com.kms.free"

    # Фигня от xiomi
    "com.miui.notes"
    "com.miui.videoplayer"
    "com.miui.screenrecorder"
    #"com.android.providers.downloads.ui"
    "com.xiaomi.glgm"
    "com.netflix.mediaclient"
    "miui.weather2"
    "com.miui.player"
    "com.xiaomi.mipicks"
    "com.mi.globalbrowser"
    "com.mi.android.globalFileexplorer"
    "com.miui.weather2"

    # Фигня от Honor
    "com.hihonor.game.kitserver"
    "com.hihonor.gamecenter"
    "com.hihonor.gameassistant"
    "com.hihonor.email"
    "com.hihonor.notepad"
    "com.hihonor.photos"
    "com.hihonor.hnmusicplayer"
    "com.hihonor.calculator"
    "hihonor.photos"
    "com.hihonor.printservice"
    "com.hihonor.hnoffice"
    "com.hihonor.appmarket"
    "com.hihonor.remotepassword"
    "com.hihonor.screenrecorder"
    #"com.hihonor.brain"
    "com.hihonor.iconnect"
    "com.hihonor.videoeditor"
    "com.hihonor.assistant"
    #"com.hihonor.autoinstallapkfrommcc"
    "com.hihonor.hnvideoplayer"
    "com.hihonor.filemanager"
    "com.hihonor.associateassistant"
    "com.hihonor.health"
    "com.hihonor.gamecenter"
    "com.hihonor.calendar"
)

total=${#apps[@]}
success=0
failed=0

echo "=========================================="
echo "Удаление ненужных приложений v 0.2.0 Beta"
echo "Всего приложений: $total"
echo "=========================================="
echo ""

for app in "${apps[@]}"; do
    if [ -n "$app" ]; then
        echo -n "Удаляю: $app ... "

        # Проверяем, установлено ли приложение
        if adb shell pm list packages | grep -q "^package:$app$"; then
            if adb shell cmd package uninstall -k --user 0 "$app" 2>/dev/null | grep -q "Success"; then
                echo "[>] OK"
                ((success++))
            else
                echo "[!] ОШИБКА"
                ((failed++))
            fi
        else
            echo "[*] Не установлено"
        fi
    fi
done

echo ""
echo "=========================================="
echo "Результаты:"
echo "Успешно удалено: $success"
echo "Ошибок: $failed"
echo "=========================================="
