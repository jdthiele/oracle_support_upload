#!/bin/bash

# This script will upload the given file to transport.oracle.com

USEREMAIL=$1
SRC_FILE=$2
SRC_FILENAME=`basename $2`
SVC_REQ_N=$3
if [ ! $# = 3 ]; then
  echo "
$0 takes two arguments
where:
 \$1 ($1) is the My Oracle Support username - aka you email address
 \$2 ($2) is the local filename
 \$3 ($3) is the Service Request Number (ex: 3-7810189786)
"
  exit 1
fi
curl -u "$USEREMAIL" -T $SRC_FILE https://transport.oracle.com/upload/issue/${SVC_REQ_N}/ | tee /dev/null
if [ $? = 0 ]; then
  echo; echo "Upload successful!"
  echo "Please notify your support engineer that the following file: "
  echo; echo "  $SRC_FILE"
  echo; echo "was uploaded to: "
  echo; echo "  https://transport.oracle.com/upload/issue/${SVC_REQ_N}/"
fi
