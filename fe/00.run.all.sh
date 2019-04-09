#!/bin/sh

###---------------------------------------------------------------------------------

./01.init.sh

./03.srv.sh

./04.cln.sh

./05.cp.sh

###---------------------------------------------------------------------------------

SUFFIX=fe.smansoft.com

if [ -f ./out."$SUFFIX".tar ];
then
	rm ./out."$SUFFIX".tar
fi;

tar -cf ./out."$SUFFIX".tar ./out/*

if [ -f ./out."$SUFFIX".cln.tar ];
then
	rm ./out."$SUFFIX".cln.tar
fi;

tar -cf ./out."$SUFFIX".cln.tar ./out/client/*

if [ -f ./out."$SUFFIX".srv.tar ];
then
	rm ./out."$SUFFIX".srv.tar
fi;

tar -cf ./out."$SUFFIX".srv.tar ./out/server/*

###---------------------------------------------------------------------------------
