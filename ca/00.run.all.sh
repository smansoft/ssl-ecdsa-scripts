#!/bin/sh

./01.init.sh

./02.ca.sh

OUT_DIR=./out
CA_OUT_DIR=../fe.ca

KEY_FILE=ca.fe.smansoft.key
PEM_FILE=ca.fe.smansoft.pem

cp -f "$OUT_DIR"/"$KEY_FILE" "$CA_OUT_DIR"
cp -f "$OUT_DIR"/"$PEM_FILE" "$CA_OUT_DIR"
