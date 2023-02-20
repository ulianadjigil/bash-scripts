#!/bin/bash
addressfile="/Users/ulana/IdeaProjects/Devops_lab2/src/addressfile"
case $1 in
  new)
    newaddress="$2 $3"
    echo "$newaddress" >> $addressfile
    ;;
  list)
    if [ -s $addressfile ]; then
      cat $addressfile
    else
      echo "Address book is empty"
    fi
    ;;
  remove)
    sed -i "" "/$2/d" $addressfile
      ;;
  clear)
    cat /dev/null > $addressfile
    ;;
  lookup)
    grep -i "$2" $addressfile | sed "s/$2//"
      ;;
  *)
    echo -n "Unknown command"
    ;;
esac