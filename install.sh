#!/usr/bin/env bash
# Installer to wallset

if [[ $(echo $LANG | cut -c 1-2) == "pt" ]]; then
  _lan=("Precisa instalar o: " "wallset foi instado com sucesso!" "wallset foi removido.")
else
  _lan=("You need to install: " "wallset has been successfully installed!" "wallset has been removed.")
fi

if [[ "$1" == "uninstall" ]]; then
  sudo rm /usr/local/bin/wallset
  rm -rf ${HOME}/.wallpapers
  [[ "$?" == "0" ]] && printf "%s\n" "${_lan[2]}"
fi

deps=("ffmpeg" "feh" "convert" "xrandr" "xdg-open" "bash" "sed")


for i in {0..6}; do
  which ${deps[i]} 2>&- >&-
  if [[ $? -ne 0 ]]; then 
    case "${deps[i]}" in
      "convert") deps[i]="imagemagick";;
      "xdg-open") deps[i]="xdg-utils";;
    esac
    echo "${_lan[0]}'${deps[i]}'"
      exit 1
  fi
done

sudo cp wallset /usr/local/bin/
sudo chmod +x /usr/local/bin/wallset
[[ "$?" == "0" ]] && printf "%s\n" "${_lan[1]}"
