VERSION=dev
PROVIDER=vbox
ARCH=amd64
BOX=debian-jessie-chef

.PHONY: clean-boxes clean-cache clean-all i386-vbox amd64-vbox

usage:
	@echo i386-vbox - build a i386 debian

build:
	packer build --force --var-file=$(ARCH).json $(PROVIDER).json

vagrant:
	vagrant box add --name=$(BOX) $(BOX)-$(ARCH)-$(PROVIDER).box

i386-vbox:
	make build ARCH=i386 PROVIDER=vbox

amd64-vbox:
	make build ARCH=amd64 PROVIDER=vbox

clean-all: clean-boxes clean-cache

clean-boxes:
	vagrant destroy -f
	vagrant box remove $(BOX)
	rm -f *.box

clean-cache:
	rm -rf packer_cache
