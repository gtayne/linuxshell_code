#!/bin/bash
read -p "input a :" num
case "$num" in
[a-zA-Z] )
      echo "$num is letter"
      ;;
[0-9])
      echo "$num is digit"
      ;;
*)
      echo "Other!";;
esac

