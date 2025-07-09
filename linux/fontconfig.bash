
# 9/14/23: Amazon on Chrome throwing weird errors when checking out.
# syslog shows a lot of "google-chrome.desktop[21514]: Fontconfig error:
# Cannot load default config file: No such file: (null)" around those
# times. See if this helps.

export FONTCONFIG_PATH=/etc/fonts
