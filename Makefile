.PHONY: build


setup:
	@docker build --target base -t dev-agents:latest .
	@chmod +x opencode claude
