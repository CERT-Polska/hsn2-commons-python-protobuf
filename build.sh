#!/bin/sh -e

SRC_DIR=./def
DST_DIR=./hsn2_protobuf

case "$1" in
    build)
		for FILE in ${SRC_DIR}/*.proto ; do 
			echo "Processing: $FILE" ;
			/usr/local/bin/protoc --proto_path=${SRC_DIR} --python_out=${DST_DIR} $FILE;
		done
    ;;
    
    clean)
        echo "Cleaning ${DST_DIR} directory"
		rm -f ${DST_DIR}/*_pb2.py
    ;;

    *)
    ;;
esac
