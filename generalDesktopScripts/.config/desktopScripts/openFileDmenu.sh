#!/bin/zsh

# image_filetypes=(.jpg .jpeg .png .ppm .pgm .tiff .png .xpm .eim )
# zathura_filetypes=(.pdf)
image_filetypes=(jpg jpeg png ppm pgm tiff png xpm eim )
zathura_filetypes=(pdf)
libreoffice_filetypes=(xlsx doc dot docx pptx ppt csv odt ods odp odg sxw stw sxc stc sxi sti sxd std sxm rtf xml pub)
coding_filetypes=(txt md tex cpp hpp c h r py ex erl)
video_filetypes=(avi mpeg mp4 wmv m4v)


# Finds the desired file
#file=$(fd /home/olav/ /mnt -t file . | dmenu -l 20 -p "Choose file:")
#file=$(fd -t file . /home/olav/ /mnt | dmenu -l 20 -p "Choose file:")
file=$(rg --hidden --files --ignore-case /home/olav /mnt | dmenu -l 20 -i -p "Choose file:")
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
elif [[ " ${coding_filetypes[@]} " =~ " ${extension} " ]] then
     emacs $file
else
    echo "Didn't match the extensions"
#    emacs $file
fi
