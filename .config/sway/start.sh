#!/bin/bash

    # enable Wayland on some tool kits
    # export QT_QPA_PLATFORM=wayland-egl
    # export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

    # screws up thunderbird and emacs, disabled for now
    # export GDK_BACKEND=wayland

    export MOZ_ENABLE_WAYLAND=1
    

    # Fix for Java GUI 
    export _JAVA_AWT_WM_NONREPARENTING=1

    

    exec sway

