package main

import (
	"fmt"
	"os"

	ui "github.com/IliyanKostov9/passbolt-tui/src/ui"
	tui "github.com/grindlemire/go-tui"
)

func main() {
	app, err := tui.NewApp(
		tui.WithRootComponent(ui.Passbolt()),
	)

	if err != nil {
		fmt.Fprintf(os.Stderr, "Error: %v\n", err)
		os.Exit(1)
	}
	defer app.Close()

	if err := app.Run(); err != nil {
		fmt.Fprintf(os.Stderr, "Error: %v\n", err)
		os.Exit(1)
	}

}
