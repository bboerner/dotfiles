# Sets reasonable Linux defaults.

# Move window buttons back to right and disable Alt-F7 as "begin-move":

# Ubuntu 13.04, 13.10, 14.04
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
gsettings set org.gnome.desktop.wm.keybindings begin-move "[]"
