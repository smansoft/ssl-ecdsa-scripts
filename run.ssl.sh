#!/bin/sh

###---------------------------------------------------------------------------------

OUT_DIR=./out
CA_DIR=./ca
FE_DIR=./fe

CA_OUT_DIR=./fe.ca

RUN_ALL_FILE=00.run.all.sh

###---------------------------------------------------------------------------------

CURR_DIR=""

###---------------------------------------------------------------------------------

if [ -f "$CA_DIR/$RUN_ALL_FILE" ];
then
    CURR_DIR=$(pwd);
    echo "$CURR_DIR";
    cd "$CA_DIR";
    "./$RUN_ALL_FILE";
    cd "$CURR_DIR";
fi;

###---------------------------------------------------------------------------------

if [ -f "$FE_DIR/$RUN_ALL_FILE" ];
then
    CURR_DIR=$(pwd);
    echo "$CURR_DIR";
    cd "$FE_DIR";
    "./$RUN_ALL_FILE";
    cd "$CURR_DIR";
fi;

CURR_DIR=$(pwd);
echo "$CURR_DIR";

###---------------------------------------------------------------------------------

exit;
