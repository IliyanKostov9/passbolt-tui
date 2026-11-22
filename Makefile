.PHONY: run
run:
	go tool tui generate ./src/ui/...
	go run ./src
