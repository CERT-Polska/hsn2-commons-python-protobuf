#
# This Makefile generates python stubs
# messages from ptotocol buffers definitions.
#

SRC_DIR=../def
DST_DIR=./pb

all: clean createdir generate debian

clean: 
	@echo "Cleaning ${DST_DIR} directory"
	@rm -rf ${DST_DIR}
	make -C debian clean

createdir:
	@echo "Creating ${DST_DIR} directory"
	@mkdir -p ${DST_DIR}

generate:
	@for file in ${SRC_DIR}/*.proto ; do \
		echo "Processing: $$file" ;\
		protoc --proto_path=${SRC_DIR} --python_out=${DST_DIR} $$file;\
	done

debian: generate
	make -C debian
