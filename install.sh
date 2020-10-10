#!/usr/bin/env bash
# Installer to wallset

if [[ $(echo $LANG | cut -c 1-2) == "pt" ]]; then
  _lan=("Precisa instalar o: " "wallset foi instalado com sucesso!" "wallset foi removido.")
else
  _lan=("You need to install: " "wallset has been successfully installed!" "wallset has been removed.")
fi

if [[ "$1" == "uninstall" ]]; then
  su root -c "rm /usr/local/bin/wallset"
  rm -rf ${HOME}/.wallpapers
  [[ "$?" == "0" ]] && printf "%s\n" "${_lan[2]}"
  exit 0
fi


if [[ "$1" == "--force" ]]; then
  su root -c "cp wallset /usr/local/bin/ && chmod +x /usr/local/bin/wallset"
  printf "%s\n" "${_lan[1]}"
  exit 0
fi

deps=("ffmpeg" "feh" "convert" "xrandr" "xdg-open" "bash" "sed")


for i in {0..6}; do
  which ${deps[i]} 2>&- >&-
  status=$?
  if [[ $status -ne 0 ]]; then 
    case "${deps[i]}" in
      "convert") deps[i]="imagemagick";;
      "xdg-open") deps[i]="xdg-utils";;
    esac
    echo "${_lan[0]}'${deps[i]}'"
      exit 1
  fi
done

su root -c "cp wallset /usr/local/bin/ && chmod +x /usr/local/bin/wallset"
[[ "$?" == "0" ]] && printf "%s\n" "${_lan[1]}"
