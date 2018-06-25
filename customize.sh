watcher() {

    echo watching folder $1/ every $2 secs.

while [[ true ]]
do
    files=`find $1 -type f -mmin -1`
    if [[ $files == "" ]] ; then
      sleep $2
    else
      wal -q -g -i $files
      gsettings reset org.gnome.desktop.interface gtk-theme
      gsettings set org.gnome.desktop.interface gtk-theme wal
      sleep 60
    fi
done
}
watcher ~/Wallpapers 3
