.DEFAULT_GOAL := build

.PHONY: build
build:
	cargo bootimage

.PHONY: run
run:
	cargo run	

.PHONY: lint
lint:
	cargo check

.PHONY: fmt
fmt:
	cargo fmt
