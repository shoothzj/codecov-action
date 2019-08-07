#!/bin/bash

set -eu


echo $INPUT_FILE

if [ "x$1" == "x"  ] || [ "x$2" == "x"  ];                                                                
then
    echo "both variables are null"
fi

if [ -z "$1" ] || [ -z "$2" ]; then
  echo 'Need 2 parameter are not empty'
fi


echo $1
echo $2

if [ $# -eq 0 ]
  then
    bash <(curl -s https://codecov.io/bash)
else
  bash <(curl -s https://codecov.io/bash) -t $1
fi

