
echo ''
echo ''
echo ''
echo ''
echo ''

OUT_DIR=./out
OUT_SRV_SIR="$OUT_DIR"/server
OUT_CLN_SIR="$OUT_DIR"/client

if [ -d "$OUT_DIR" ];
then
	rm -f -r "$OUT_DIR"
fi;

mkdir "$OUT_DIR"
mkdir "$OUT_SRV_SIR"
mkdir "$OUT_CLN_SIR"

echo 'create dir ./new_certs...'
echo '---------------------------------------------------------------------'

if [ -d ./new_certs ];
then
	rm -f -r ./new_certs
fi;

mkdir ./new_certs

echo 'create file serial...'
echo '---------------------------------------------------------------------'

if [ -f ./serial ];
then
	rm ./serial.*
	rm ./serial
fi;

touch serial
echo 01 > serial

echo 'create file index.txt'
echo '---------------------------------------------------------------------'

if [ -f ./index.txt ];
then
	rm ./index.txt
fi;

touch index.txt

rm -f ./*.tar
