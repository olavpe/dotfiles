#!/bin/zsh

# image_filetypes=(.jpg .jpeg .png .ppm .pgm .tiff .png .xpm .eim )
# zathura_filetypes=(.pdf)
image_filetypes=(jpg jpeg png ppm pgm tiff png xpm eim )
zathura_filetypes=(pdf)
libreoffice_filetypes=(xlsx doc dot docx pptx ppt csv odt ods odp odg sxw stw sxc stc sxi sti sxd std sxm rtf xml pub)
coding_filetypes=(txt md tex cpp hpp c h r py ex erl)
video_filetypes=(avi mpeg mp4 wmv m4v)
audio_filetypes=(mp3 wav ogg flac aiff au)

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

# Finds the desired file
#file=$(fd /home/olav/ /mnt -t file . | dmenu -l 20 -p "Choose file:")
#file=$(fd -t file . /home/olav/ /mnt | dmenu -l 20 -p "Choose file:")
file=$(rg --hidden --files --ignore-case /home/olav /mnt | \
 dmenu -l 20 -i -nb $color0 -nf $color1 -sb $color0 -sf $color4 -p "Choose file:")
# file=$(find ~/ | dmenu -l 10 -p "Choose file:")
# echo $file
extension="${file##*.}"
# echo $extension

# Selecting which program to open the files with
if [[ " ${zathura_filetypes[@]} " =~ " ${extension} " ]] then
    zathura "$file"
#    ~/builds/Zathura-Pywal/genzathurarc
#    ~/builds/Zathura-Pywal/zathura "$file"
elif [[ " ${image_filetypes[@]} " =~ " ${extension} " ]] then
    feh $file
elif [[ " ${libreoffice_filetypes[@]} " =~ " ${extension} " ]] then
     libreoffice $file
elif [[ " ${video_filetypes[@]} " =~ " ${extension} " ]] then
     mpv $file
elif [[ " ${audio_filetypes[@]} " =~ " ${extension} "  ]] then
       mpv $file
elif [[ " ${coding_filetypes[@]} " =~ " ${extension} " ]] then
     emacs $file
else
    echo "Didn't match the extensions"
#    emacs $file
fi
