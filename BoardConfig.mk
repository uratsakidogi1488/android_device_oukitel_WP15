# ==========================================
# МАКСИМАЛЬНО УРЕЗАННЫЙ TWRP (ТОЛЬКО РАБОТА)
# ==========================================

# --- 1. ЯЗЫК И ВРЕМЯ ---
TW_DEFAULT_LANGUAGE := ru
# Выкидываем все остальные языки для экономии места
TW_EXTRA_LANGUAGES := false
# Ставим часовой пояс +3 (MSK)
TW_DEFAULT_TIMEZONE := "Europe/Moscow"

# --- 2. ГРАФИКА (РЕЖЕМ В НОЛЬ) ---
# Ставим минимальное разрешение темы (будет выглядеть убого, но весит копейки)
TW_THEME := portrait_mdpi
# Выкидываем официальное приложение TWRP
TW_EXCLUDE_TWRPAPP := true
# Выкидываем тяжелые шрифты, оставляем базовые
TW_EXCLUDE_DEFAULT_USB_INIT := true

# --- 3. ТЕРМИНАЛ И АРХИВЫ (ОСТАВЛЯЕМ) ---
# Оставляем базовый набор консольных утилит (tar, gzip и т.д.)
TW_USE_TOOLBOX := true
# ОСТАВЛЯЕМ инструменты для распаковки/перепаковки boot (magiskboot и прочее)
TW_INCLUDE_REPACKTOOLS := true
# Оставляем поддержку сжатия xz/lzma
TW_INCLUDE_XZ := true

# --- 4. НОРМАЛЬНОЕ МОНТИРОВАНИЕ ДИСКОВ ---
# Поддержка NTFS для флешек и дисков
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FUSE_NTFS := true
# Поддержка exFAT
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_EXFAT := true

# --- 5. ВЫРЕЗАЕМ ВЕСЬ МУСОР И ШИФРОВАНИЕ ---
# Питон не нужен — выкидываем
TW_INCLUDE_PYTHON := false
# APEX-модули тянут кучу либ из AOSP — выкидываем
TW_EXCLUDE_APEX := true
# Расшифровка Data не нужна — вырезаем тяжелую криптографию
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
BOARD_USES_METADATA_PARTITION := false

# --- 6. ЖЕСТКОЕ СЖАТИЕ РАМДИСКА ---
# Заставляем собирать boot.img с максимальным сжатием (LZMA жмет лучше всего)
LZMA_RAMDISK_TARGETS := boot
