#
# This Makefile is responsoble for build debian package.
# 4 variables must be provided:
#   HSN2_VER=X.X
#   BUILD_NUMBER=999
#   DEBIAN_DIST=(experimental|2.X)

DEBIAN_DIST=experimental

all: hsn2proto

clean: hsn2proto-clean

HSN2PROTOPKG=python-hsn2-proto_$(HSN2_VER)-$(BUILD_NUMBER)_all
hsn2proto: hsn2proto-clean
	mkdir -p $(HSN2PROTOPKG)/opt/hsn2/python/proto
	mkdir -p $(HSN2PROTOPKG)/DEBIAN
	cp -r ../pb/*.py $(HSN2PROTOPKG)/opt/hsn2/python/proto
	cp control $(HSN2PROTOPKG)/DEBIAN
	sed -i "s/{DEBIAN_DIST}/${DEBIAN_DIST}/" ${HSN2PROTOPKG}/DEBIAN/control
	sed -i "s/{VER}/${HSN2_VER}-${BUILD_NUMBER}/" ${HSN2PROTOPKG}/DEBIAN/control
	fakeroot dpkg -b $(HSN2PROTOPKG)

hsn2proto-clean:
	@rm -rf python-hsn2-proto_*
	
