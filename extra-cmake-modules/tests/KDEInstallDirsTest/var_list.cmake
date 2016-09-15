set(var_suffixes
    APPDIR
    AUTOSTARTDIR
    BINDIR
    CMAKEPACKAGEDIR
    CONFDIR
    DATADIR
    DATADIR_KF5
    DATAROOTDIR
    DBUSDIR
    DBUSINTERFACEDIR
    DBUSSERVICEDIR
    DBUSSYSTEMSERVICEDIR
    DESKTOPDIR
    DOCBUNDLEDIR
    EXECROOTDIR
    ICONDIR
    INCLUDEDIR
    INCLUDEDIR_KF5
    INFODIR
    KCFGDIR
    KCONFUPDATEDIR
    KNOTIFY5RCDIR
    KXMLGUI5DIR
    KSERVICES5DIR
    KSERVICETYPES5DIR
    LIBDIR
    LIBEXECDIR
    LIBEXECDIR_KF5
    LOCALEDIR
    LOCALSTATEDIR
    MANDIR
    MIMEDIR
    METAINFODIR
    PLUGINDIR
    QMLDIR
    QTPLUGINDIR
    QTQUICKIMPORTSDIR
    SBINDIR
    SHAREDSTATEDIR
    SOUNDDIR
    SYSCONFDIR
    TEMPLATEDIR
    WALLPAPERDIR)
if(APPLE)
    list(APPEND var_suffixes BUNDLEDIR)
endif()

set(compat_APPDIR XDG_APPS_INSTALL_DIR)
set(compat_AUTOSTARTDIR AUTOSTART_INSTALL_DIR)
set(compat_BINDIR BIN_INSTALL_DIR)
set(compat_CMAKEPACKAGEDIR CMAKECONFIG_INSTALL_PREFIX)
set(compat_CONFDIR CONFIG_INSTALL_DIR)
set(compat_DATADIR DATA_INSTALL_DIR)
set(compat_DATADIR_KF5 KF5_DATA_INSTALL_DIR)
set(compat_DATAROOTDIR SHARE_INSTALL_PREFIX)
set(compat_DBUSINTERFACEDIR DBUS_INTERFACES_INSTALL_DIR)
set(compat_DBUSSERVICEDIR DBUS_SERVICES_INSTALL_DIR)
set(compat_DBUSSYSTEMSERVICEDIR DBUS_SYSTEM_SERVICES_INSTALL_DIR)
set(compat_DESKTOPDIR XDG_DIRECTORY_INSTALL_DIR)
set(compat_DOCBUNDLEDIR HTML_INSTALL_DIR)
set(compat_EXECROOTDIR EXEC_INSTALL_PREFIX)
set(compat_ICONDIR ICON_INSTALL_DIR)
set(compat_INCLUDEDIR INCLUDE_INSTALL_DIR)
set(compat_INCLUDEDIR_KF5 KF5_INCLUDE_INSTALL_DIR)
set(compat_KCFGDIR KCFG_INSTALL_DIR)
set(compat_KCONFUPDATEDIR KCONF_UPDATE_INSTALL_DIR)
set(compat_KNOTIFY5RCDIR KNOTIFYRC_INSTALL_DIR)
set(compat_KXMLGUI5DIR KXMLGUI_INSTALL_DIR)
set(compat_KSERVICES5DIR SERVICES_INSTALL_DIR)
set(compat_KSERVICETYPES5DIR SERVICETYPES_INSTALL_DIR)
set(compat_LIBDIR LIB_INSTALL_DIR)
set(compat_LIBEXECDIR LIBEXEC_INSTALL_DIR)
set(compat_LIBEXECDIR_KF5 KF5_LIBEXEC_INSTALL_DIR)
set(compat_LOCALEDIR LOCALE_INSTALL_DIR)
set(compat_MANDIR MAN_INSTALL_DIR)
set(compat_MIMEDIR XDG_MIME_INSTALL_DIR)
set(compat_PLUGINDIR PLUGIN_INSTALL_DIR)
set(compat_QMLDIR QML_INSTALL_DIR)
set(compat_QTPLUGINDIR QT_PLUGIN_INSTALL_DIR)
set(compat_QTQUICKIMPORTSDIR IMPORTS_INSTALL_DIR)
set(compat_SBINDIR SBIN_INSTALL_DIR)
set(compat_SOUNDDIR SOUND_INSTALL_DIR)
set(compat_SYSCONFDIR SYSCONF_INSTALL_DIR)
set(compat_TEMPLATEDIR TEMPLATES_INSTALL_DIR)
set(compat_WALLPAPERDIR WALLPAPER_INSTALL_DIR)
if(APPLE)
    set(compat_BUNDLEDIR BUNDLE_INSTALL_DIR)
endif()

set(_gnu_install_dirs_suffixes
    BINDIR
    SBINDIR
    LIBEXECDIR
    SYSCONFDIR
    SHAREDSTATEDIR
    LOCALSTATEDIR
    LIBDIR
    INCLUDEDIR
    OLDINCLUDEDIR
    DATAROOTDIR
    DATADIR
    INFODIR
    LOCALEDIR
    MANDIR
    DOCDIR)

if(KDE_INSTALL_DIRS_NO_CMAKE_VARIABLES)
    foreach(suffix ${var_suffixes})
        set(should_set_CMAKE_INSTALL_${suffix} FALSE)
    endforeach()
elseif(KDE_INSTALL_DIRS_NO_DEPRECATED)
    foreach(suffix ${var_suffixes})
        set(should_set_CMAKE_INSTALL_${suffix} FALSE)
    endforeach()
    foreach(suffix ${_gnu_install_dirs_suffixes})
        set(should_set_CMAKE_INSTALL_${suffix} TRUE)
    endforeach()
else()
    foreach(suffix ${var_suffixes})
        set(should_set_CMAKE_INSTALL_${suffix} TRUE)
    endforeach()
endif()

unset(_gnu_install_dirs_suffixes)

