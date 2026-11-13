#!/bin/bash

apps=(
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
    "com.google.android.apps.searchlite"
    "com.google.android.apps.restore"
    "com.google.android.gms" # Google сервисы
    "com.google.android.androidquicksearchbox"
    "com.google.android.apps.maps"
    "com.google.android.apps.docs"
    "com.google.android.apps.messaging"
    "com.google.android.apps.tachyon"
    "com.google.android.apps.googleassistant"
    "com.google.android.apps.genie.geniewidget"
    "com.google.android.apps.subscriptions.red"
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
    #"com.google.android.inputmethod.latin" # Клавиатура
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
    "com.android.chrome"
    "com.google.android.apps.chrome"

    # Google Pay
    "com.google.android.apps.walletnfcrel"
    "com.google.android.apps.nbu.paisa.inapp"
    "com.google.android.apps.nbu.paisa.user"
    "com.google.android.gms.wallet"
    "com.google.android.gms.payments"
    "com.google.android.apps.paidtasks"

    # Google Play
    "com.android.vending"

    # Google Play Фильмы
    "com.google.android.videos"

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
    "com.google.android.calendar"
    "com.android.thememanager"
    "com.android.thememanager.module"
    "com.android.mms"
    "com.android.contacts"
    "com.android.deskclock"
    "com.android.email"
    "com.android.calendar"
    "com.android.providers.calendar"
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
    "com.igg.android.lordsmobile"
    "com.zhiliaoapp.musically" # вроде тик ток
    "ru.ivi.client"
    "com.kms.free"
    #"com.android.bluetoothmidiservice"
    #"com.android.overlay.emergency"
    #"com.android.simappdialog"

    # Фигня от xiomi
    # Телеметрия и аналитика Xiaomi
    "com.miui.analytics"
    "com.xiaomi.joyose"
    "com.xiaomi.mirecycle"

    # Реклама и рекомендации
    "com.miui.msa.global"
    "com.miui.android.fashiongallery"
    "com.mi.android.globalminusscreen"
    "com.miui.hybrid"
    "com.miui.hybrid.accessory"
    "com.xiaomi.discover"
    "com.miui.smsextra"

    # Дубли и сторонний софт
    "com.touchtype.swiftkey"
    "com.swiftkey.swiftkeyconfigurator"
    "com.swiftkey.languageprovider"
    "org.pocketworkstation.pckeyboard"
    "com.amaze.filemanager"
    "cn.wps.xiaomi.abroad.lite"
    "systems.sieber.vscreensaver"
    "com.github.cvzi.screenshottile"
    "com.android.browser"
    "com.lbe.security.miui"

    # Переводчики, облака, очистка, мелочи Xiaomi
    "com.miui.translation.kingsoft"
    "com.miui.translation.youdao"
    "com.miui.translation.xmcloud"
    "com.miui.translationservice"
    "com.miui.cleanmaster"
    "com.miui.cloudbackup"
    "com.miui.yellowpage"
    "com.xiaomi.midrop"
    "com.miui.userguide"
    "com.miui.miwallpaper"
    "com.miui.touchassistant"
    "com.xiaomi.powerchecker"
    "com.miui.freeform"
    "com.miui.compass"
    "com.miui.fm"
    "com.miui.fmservice"
    "com.miui.calculator"
    "com.miui.cloudservice"
    "com.miui.miservice"

    # Тестовые и sample-пакеты
    "com.android.cts.ctsshim"
    "com.android.cts.priv.ctsshim"
    "com.mi.AutoTest"
    "com.stability.camerastability"
    "com.qualcomm.qti.auth.sampleextauthservice"
    "com.qualcomm.qti.auth.sampleauthenticatorservice"
    "com.qualcomm.qti.auth.securesampleauthservice"
    "com.qualcomm.qti.RIDL"

    # Оператор, регион, редко используемое
    "com.qualcomm.qti.telephony.vodafonepack"
    "com.micredit.in"
    "com.mipay.wallet.in"
    "com.qualcomm.embms"
    "com.qualcomm.qti.CdmaCallOptions"
    "com.dsi.ant.server"
    "com.qualcomm.wfd.service"
    "com.google.android.printservice.recommendation"
    "com.google.android.partnersetup"
    "com.android.dreams.phototable"
    "com.android.wallpaper.livepicker"

    "com.miui.notes"
    "com.miui.videoplayer"
    "com.miui.screenrecorder"
    "com.xiaomi.glgm"
    "com.netflix.mediaclient"
    "com.miui.player"
    "com.xiaomi.mipicks"
    "com.mi.globalbrowser"
    "com.mi.android.globalFileexplorer"
    "com.miui.weather2"
    "com.miui.bugreport"
    "com.miui.gallery"
    "com.android.providers.downloads.ui"
    "com.xiaomi.scanner"
    "com.mi.android.globalminusscreen"
    "com.google.android.apps.genie.geniewidget"

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
    "com.hihonor.iconnect"
    "com.hihonor.videoeditor"
    "com.hihonor.assistant"
    "com.hihonor.hnvideoplayer"
    "com.hihonor.filemanager"
    "com.hihonor.associateassistant"
    "com.hihonor.health"
    "com.hihonor.calendar"
    #"com.hihonor.brain"
    #"com.hihonor.autoinstallapkfrommcc"
)

# Конфигурация
KEEP_DATA=false # true = сохранять данные приложения (-k флаг)
if [ "$1" == "1" ]; then
    KEEP_DATA=true
fi
VERBOSE=false # Выводить дополнительную информацию
if [ "$2" == "1" ]; then
    VERBOSE=true
USER_ID=$(($3)) # ID пользователя для удаления
fi

# Справка по параметрам
if [ "$1" == "-h" ] || [ "$1" == "--h" ] || [ "$1" == "-help" ] || [ "$1" == "--help" ]; then
    echo "====================================="
    echo 'Справка по trash_remover_from_mobile'
    echo "====================================="
    echo ""
    echo "Параметры:"
    echo "  KEEP_DATA - Сохранять данные приложения (0/1, по умолчанию: 0)"
    echo "  VERBOSE - Выводить дополнительную информацию (0/1, по умолчанию: 0)"
    echo "  USER_ID - ID пользователя для удаления (по умолчанию: 0)"
    echo ""
    echo "Пример: this_script.sh 0 1 0"
    echo ""
    echo "Флаги:"
    echo "  -h, --h, -help, --help - Вывести эту справку"
    echo ""
    exit 0
fi

# Проверка установки adb
if ! command -v adb &> /dev/null; then
    echo "[!] Ошибка - Установите Android SDK Platform Tools (adb)"
    exit 1
fi

devices=$(adb devices 2>/dev/null | grep -c "device$")

# Проверка подключения устройств
if [ "$devices" -eq 0 ]; then
    echo "[!] Ошибка: устройство Android не подключено! Подключите устройство через USB и включите режим отладки"
    exit 1
fi

if [ "$devices" -gt 1 ]; then
    echo "[!] Внимание: подключено несколько устройств! Удаление будет происходить на первом попавшемся устройстве!"
    exit 1
fi

total=${#apps[@]}
success=0
failed=0
not_installed=0

echo "=========================================="
echo "Удаление ненужных приложений v 0.3.9 Beta"
echo "Всего приложений для удаления: $total"
#echo "Сохранять данные приложений: $KEEP_DATA"
echo "=========================================="
echo ""

# Получаем список установленных пакетов один раз и кешируем
[[ "$VERBOSE" == true ]] && echo ">Получаем список установленных приложений..."
packages_list=$(adb shell pm list packages 2>/dev/null)

if [ -z "$packages_list" ]; then
    echo "[!] Ошибка: не удалось получить список приложений."
    exit 1
fi

[[ "$VERBOSE" == true ]] && echo "[>] Найдено ($(echo "$packages_list" | wc -l) приложений)"
echo ""

uninstall_flag=""
if [[ "$KEEP_DATA" == true ]]; then
    uninstall_flag="-k"
fi

for app in "${apps[@]}"; do
    # Пропускаем пустые строки
    if [ -z "$app" ]; then
        continue
    fi

    echo -n "[>] Удаляем: $app ... "

    if ! echo "$packages_list" | grep -q "^package:${app}$"; then
        echo "[-] $app не установлен"
        ((not_installed++))
        continue
    fi

    uninstall_output=$(adb shell cmd package uninstall $uninstall_flag --user "$USER_ID" "$app" 2>&1)
    uninstall_exit_code=$?

    # Если код 0 И поток ошибок пуст - значит всё хорошо
    if [ $uninstall_exit_code -eq 0 ] && echo "$uninstall_output" | grep -q "Success"; then
        echo "[>] Успех"
        ((success++))
    else
        echo "[!] ОШИБКА"
        if [[ "$VERBOSE" == true ]]; then            
            echo "    Вывод: $uninstall_output"
        fi
        ((failed++))
    fi
done

echo ""
echo "=========================================="
echo "[>] Результаты:"
echo "   [>] Успешно удалено: $success"
echo "   [-] Не установлено: $not_installed"
echo "   [!] Ошибок: $failed"
echo "=========================================="

# Возвращаем код ошибки если были ошибки
if [ $failed -gt 0 ]; then
    exit 1
fi

exit 0
