#!/bin/sh

PKGS="moby
linuxkit
rtf"

for pkg in "${PKGS}"; do
	brew install --HEAD $pkg --verbose
	# Skip audit until we have a stable download
	# brew audit $pkg --strict
	brew test $pkg
done
