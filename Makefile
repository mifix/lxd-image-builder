
PACKER_VERSION = 1.3.1

PACKER_URL = https://releases.hashicorp.com/packer/$(PACKER_VERSION)/packer_$(PACKER_VERSION)_linux_amd64.zip


.DEFAULT_GOAL := build


packer_$(PACKER_VERSION)_linux_amd64.zip:
	@echo "Downloading packer (Version: $(PACKER_VERSION))..."
	@wget -q $(PACKER_URL)


packer: packer_$(PACKER_VERSION)_linux_amd64.zip
	@unzip packer_$(PACKER_VERSION)_linux_amd64.zip


.PHONY: validate
validate:
	@./packer validate sneezy.json


.PHONY: build
build: validate
	@./packer build sneezy.json
