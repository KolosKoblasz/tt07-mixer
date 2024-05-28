PROJECT_NAME := mixer_control
export PDK_ROOT=/tools/digital_pdk/pdk
export OPENLANE_ROOT=/tools/digital_pdk/openlane
export OPENLANE_IMAGE_NAME="efabless/openlane:30ee1388932eb55a89ad84ee43997bfe3a386421-amd64"

# needs PDK_ROOT and OPENLANE_ROOT, OPENLANE_IMAGE_NAME set from your environment
harden:
	docker run --rm \
	-v $(OPENLANE_ROOT):/openlane \
	-v $(PDK_ROOT):$(PDK_ROOT) \
	-v $(CURDIR):/work \
	-e PDK_ROOT=$(PDK_ROOT) \
	-e PDK=$(PDK) \
	-u $(shell id -u $(USER)):$(shell id -g $(USER)) \
	$(OPENLANE_IMAGE_NAME) \
	/bin/bash -c "./flow.tcl -ignore_mismatches -overwrite -design /work/openlane/$(PROJECT_NAME) -run_path /work/openlane/$(PROJECT_NAME)/runs -tag $(PROJECT_NAME)"

update_files:
	cp openlane/$(PROJECT_NAME)/runs/$(PROJECT_NAME)/results/final/gds/$(PROJECT_NAME).gds gds
	cp openlane/$(PROJECT_NAME)/runs/$(PROJECT_NAME)/results/final/verilog/gl/$(PROJECT_NAME).v verilog/gl/
