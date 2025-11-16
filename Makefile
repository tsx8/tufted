# Extract version from typst.toml
VERSION := $(shell grep '^version = ' typst.toml | sed 's/version = "\(.*\)"/\1/')

# Create symlink to local package cache
.PHONY: link-macos link-linux

link-macos:
	mkdir -p ~/Library/Caches/typst/packages/preview/tufted
	ln -sf $(PWD) ~/Library/Caches/typst/packages/preview/tufted/$(VERSION)

link-linux:
	mkdir -p ~/.cache/typst/packages/preview/tufted
	ln -sf $(PWD) ~/.cache/typst/packages/preview/tufted/$(VERSION)

