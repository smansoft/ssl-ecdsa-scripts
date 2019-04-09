#!/bin/sh

OUT_DIR=./out
CA_OUT_DIR=../fe.ca

OUT_CLN_DIR="$OUT_DIR"/client
OUT_SRV_DIR="$OUT_DIR"/server


CA_CERT_FILE=./ca.fe.smansoft.pem

SRV_KEY_FILE=./srv.fe.smansoft.key
SRV_CSR_FILE=./srv.fe.smansoft.csr
SRV_CERT_FILE=./srv.fe.smansoft.cert
SRV_CERT12_FILE=./srv.fe.smansoft.p12

CLN_KEY_FILE=./cln.fe.smansoft.key
CLN_CSR_FILE=./cln.fe.smansoft.csr
CLN_CERT_FILE=./cln.fe.smansoft.cert
CLN_CERT12_FILE=./cln.fe.smansoft.p12

#---------------------------------------------------------------------------

cp -f 	"$OUT_DIR"/"$CLN_KEY_FILE"  	"$OUT_CLN_DIR"
cp -f 	"$OUT_DIR"/"$CLN_CERT_FILE"  	"$OUT_CLN_DIR"
cp -f 	"$OUT_DIR"/"$CLN_CERT12_FILE"  	"$OUT_CLN_DIR"
cp -f 	"$CA_OUT_DIR"/"$CA_CERT_FILE"  	"$OUT_CLN_DIR"

cp -f 	"$OUT_DIR"/"$SRV_KEY_FILE"  	"$OUT_SRV_DIR"
cp -f 	"$OUT_DIR"/"$SRV_CERT_FILE"  	"$OUT_SRV_DIR"
cp -f 	"$OUT_DIR"/"$SRV_CERT12_FILE"  	"$OUT_SRV_DIR"
cp -f 	"$CA_OUT_DIR"/"$CA_CERT_FILE"  	"$OUT_SRV_DIR"

#---------------------------------------------------------------------------
