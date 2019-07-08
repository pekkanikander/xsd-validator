#!/bin/bash
# call xsdv

#First find out where we are relative to the user dir
callPath=${0%/*}

if [[ ${callPath} = '.' ]]; then
  callPath=${PWD}
fi

if [[ -n "${callPath}" ]]; then
  callPath=${callPath}/
fi

export XERCES_IMPLEMENTATION="`realpath ${callPath}../xerces-2_12_0/xercesImpl.jar`"
java -jar ${callPath}lib/xsdv.jar "$@"
