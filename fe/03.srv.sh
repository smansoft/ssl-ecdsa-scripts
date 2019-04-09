#!/bin/sh

OUT_DIR=./out
CA_OUT_DIR=../fe.ca
CONF_FILE=./cnfs/openssl.srv.cnf

KEY_FILE=./srv.fe.smansoft.key
CSR_FILE=./srv.fe.smansoft.csr
CERT_FILE=./srv.fe.smansoft.cert
CERT12_FILE=./srv.fe.smansoft.p12

CA_KEY_FILE=./ca.fe.smansoft.key
CA_PEM_FILE=./ca.fe.smansoft.pem

EC_NAME="prime256v1"

CERT_PASSWORD='smansoft'

#---------------------------------------------------------------------------

openssl ecparam -name $EC_NAME -genkey -noout -out "$OUT_DIR"/"$KEY_FILE"

echo '---------------------------------------------------------------------'
echo 'SRV Key File'
echo '---------------------------------------------------------------------'
openssl ec -noout -text -in "$OUT_DIR"/"$KEY_FILE"
echo '---------------------------------------------------------------------'

#---------------------------------------------------------------------------

openssl req -config "$CONF_FILE" -new -nodes -key "$OUT_DIR"/"$KEY_FILE" -out "$OUT_DIR"/"$CSR_FILE"

echo '---------------------------------------------------------------------'
echo 'SRV Certificate Request File'
echo '---------------------------------------------------------------------'
openssl req -noout -text -in "$OUT_DIR"/"$CSR_FILE"

#---------------------------------------------------------------------------

openssl ca -batch -config "$CONF_FILE" -days 1825 -keyfile "$CA_OUT_DIR"/"$CA_KEY_FILE" -cert "$CA_OUT_DIR"/"$CA_PEM_FILE" -in "$OUT_DIR"/"$CSR_FILE" -out "$OUT_DIR"/"$CERT_FILE"

echo '---------------------------------------------------------------------'
echo 'SRV Certificate'
echo '---------------------------------------------------------------------'
openssl x509 -noout -text -in "$OUT_DIR"/"$CERT_FILE"
echo '---------------------------------------------------------------------'
openssl pkcs12 -export -in "$OUT_DIR"/"$CERT_FILE" -inkey "$OUT_DIR"/"$KEY_FILE" -passout pass:"$CERT_PASSWORD" -out "$OUT_DIR"/"$CERT12_FILE"
echo '---------------------------------------------------------------------'

#---------------------------------------------------------------------------
