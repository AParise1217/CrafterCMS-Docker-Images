#!/bin/sh

CRAFTER_START_HOME=${CRAFTER_START_HOME:=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )}

if [[ -s  "$CRAFTER_START_HOME/crafter.sh" ]]; then
      $CRAFTER_START_HOME/crafter.sh start $1
      echo "Happy Crafting"
      exit 0
else
      echo -e "Error: "
      echo "crafter.sh was not found in $CRAFTER_START_HOME"
      echo -e "Exiting."
      exit -1
fi
