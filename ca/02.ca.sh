#!/bin/sh

OUT_DIR=./out
CONF_FILE=./cnfs/openssl.ca.cnf
KEY_FILE=./ca.fe.smansoft.key
PEM_FILE=./ca.fe.smansoft.pem

EC_NAME="prime256v1"

#---------------------------------------------------------------------------

openssl ecparam -name $EC_NAME -genkey -noout -out "$OUT_DIR"/"$KEY_FILE"

echo '---------------------------------------------------------------------'
echo 'CA Key File'
echo '---------------------------------------------------------------------'
openssl ec -noout -text -in "$OUT_DIR"/"$KEY_FILE"
echo '---------------------------------------------------------------------'

#---------------------------------------------------------------------------

openssl req -new -nodes -config "$CONF_FILE" -x509 -sha256 -key "$OUT_DIR"/"$KEY_FILE" -days 1825 -out "$OUT_DIR"/"$PEM_FILE" -outform pem

echo '---------------------------------------------------------------------'
echo 'CA Certificate'
echo '---------------------------------------------------------------------'
openssl x509 -noout -text -in "$OUT_DIR"/"$PEM_FILE"
echo '---------------------------------------------------------------------'

#---------------------------------------------------------------------------
