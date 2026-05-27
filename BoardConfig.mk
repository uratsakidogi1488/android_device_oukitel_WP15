# Минимальный BoardConfig.mk без шифрования для твоего TWRP

# Отключаем всё, что не нужно
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
TW_PREPARE_DATA_MEDIA_EARLY := false

# Отключаем ненужные модули
TW_USE_TOOLBOX := false
TW_EXCLUDE_NTFS_3G := true
TW_EXCLUDE_REPACKTOOLS := true
TW_EXCLUDE_RESETPROP := true
TW_NO_SCREEN_BLANK := true
TW_DISABLE_LANGUAGE := true
TW_EXCLUDE_TWRPAPP := true

# Минимальные настройки для твоего устройства (пример, подставь свои)
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true

# Добавь сюда свои минимальные настройки дисплея, тача и базовые функции
