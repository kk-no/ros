.DEFAULT_GOAL := build

.PHONY: build
build:
	cargo bootimage

.PHONY: boot
boot:
	qemu-system-x86_64 -drive format=raw,file=target/x86_64-ros/debug/bootimage-ros.bin

.PHONY: lint
lint:
	cargo check

.PHONY: fmt
fmt:
	cargo fmt
