.PHONY: run
run:
	tui generate ./src/...
	go run ./src
