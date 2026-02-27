.DEFAULT_GOAL := build
BIN_DIR := bin
# Find all command directories
CMDS := $(notdir $(wildcard ./cmd/*))


.PHONY:fmt vet build clean $(CMDS)

fmt:
	go fmt ./...

vet: fmt
	go vet ./...

# Target to build all binaries
build: $(CMDS)

# Rule to build a specific command (e.g., app1 or app2)
$(CMDS): vet
	@echo "Building $@..."
	go build -o $(BIN_DIR)/$@ ./cmd/$@

# Clean up binaries
clean:
	@echo "Cleaning up..."
	rm -rf $(BIN_DIR)
