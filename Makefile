.PHONY: run
run:
	go tool tui generate ./src/...
	go run ./src
