OUTPUT_DIR=./bin

GOARCH ?= $(shell go env GOARCH)
GOOS ?= $(shell go env GOOS)

BINARY_NAME=simon
LINUX_BINARY_NAME=simon_linuxnj