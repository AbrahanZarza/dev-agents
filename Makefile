.PHONY: build


build:
	@docker build --target base -t dev-agents:latest .
	@chmod +x opencode claude
