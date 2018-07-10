#!/bin/bash

wal -q -g -i $1
gsettings reset org.gnome.desktop.interface gtk-theme
gsettings set org.gnome.desktop.interface gtk-theme wal
