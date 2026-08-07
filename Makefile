.PHONY: run
run:
	tui generate ./...
	go run ./src
