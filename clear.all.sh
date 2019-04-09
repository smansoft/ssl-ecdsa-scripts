#!/bin/sh

###---------------------------------------------------------------------------------

OUT_DIR=./out
CA_DIR=./ca
FE_DIR=./fe

CA_OUT_DIR=./fe.ca

INIT_FILE=01.init.sh

###---------------------------------------------------------------------------------

CURR_DIR=""

if [ -d "$CA_OUT_DIR" ];
then
    rm -f "$CA_OUT_DIR/*";
fi;

###---------------------------------------------------------------------------------

if [ -f "$CA_DIR/$INIT_FILE" ];
then
    CURR_DIR=$(pwd);
    echo "$CURR_DIR";
    cd "$CA_DIR";
    "./$INIT_FILE";
    cd "$CURR_DIR";
fi;

###---------------------------------------------------------------------------------

if [ -f "$FE_DIR/$INIT_FILE" ];
then
    CURR_DIR=$(pwd);
    echo "$CURR_DIR";
    cd "$FE_DIR";
    "./$INIT_FILE";
    cd "$CURR_DIR";
fi;

CURR_DIR=$(pwd);
echo "$CURR_DIR";

###---------------------------------------------------------------------------------

exit;
