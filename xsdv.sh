#!/bin/bash
# call xsdv

if [ "x$XERCES_PATH" = "x" ]; then
   # Try a parallel Xerces implementation
   XERCES_PATH="`realpath ${callPath}../xerces2-j/build/`"
fi

if [ -f "$XERCES_PATH/xercesImpl.jar" ]; then
    export XERCES_IMPLEMENTATION="$XERCES_PATH/xercesImpl.jar"
fi

#First find out where we are relative to the user dir
callPath=${0%/*}

if [[ ${callPath} = '.' ]]; then
  callPath=${PWD}
fi

if [[ -n "${callPath}" ]]; then
  callPath=${callPath}/
fi

java -jar ${callPath}lib/xsdv.jar "$@"
