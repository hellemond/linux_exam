#!/bin/bash
FILE="${HOME}/exam"


while getopts ":d" arg; do
  case $arg in
    d)

      echo "tar -cvzf $FILE/${OPTARG}.tar.gz"
      echo "rsync --remove-source-files -options $FILE/$OPTARG.tar.gz $FILE/backups"

      ;;
    *)
      echo "$arg is invalid"
      ;;
  esac
done
