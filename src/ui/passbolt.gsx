package ui
import (
	client "github.com/IliyanKostov9/passbolt-tui/src/passbolt"
	tui "github.com/grindlemire/go-tui"
)

type configure struct {
	address    *tui.NewInput
	password   *tui.NewInput
	privateKey *tui.NewInput
}

func Passbolt() *input {
	if client := (NewClient{}); client != nil {
	return &input{
		address: tui.NewInput(
			tui.WithInputWidth(30),
			tui.WithInputBorder(tui.BorderRounded),
			tui.WithInputPlaceholder("Type your address here..."),
			tui.WithInputOnSubmit(func(address string) {
				client.address = address
				}),
		),
		password: tui.NewInput(
		tui.WithInputWidth(30),
		tui.WithInputBorder(tui.BorderRounded),
		tui.WithInputPlaceholder("Type your password here..."),
		tui.WithInputOnSubmit(func(password string) {
			client.password = password
			}),
		),
		privateKey: tui.NewInput(
		tui.WithInputWidth(30),
		tui.WithInputBorder(tui.BorderRounded),
		tui.WithInputPlaceholder("Either type the path to the private key or paste it here..."),
		tui.WithInputOnSubmit(func(privateKey string) {
			client.privateKey = privateKey
			}),
		),
	}
	} else {
		return &input{
			address: tui.NewState(client.address),
			password: tui.NewState(client.password),
			privateKey: tui.NewState(client.privateKey),
	}
	}

}

func (input *input) KeyMap() tui.KeyMap {
	return tui.KeyMap{
		tui.On(tui.KeyEscape, func(ke tui.KeyEvent) { ke.App().Stop() }),
	}
}

func (input *input) Watchers() []tui.Watcher {
	return []tui.Watcher{
	}
}

templ (input *input) Render() {
	<div class="flex-col items-center justify-center h-full">
		<div class="border-rounded border-cyan p-2 gap-1 flex-col items-center">
			<span class="text-cyan font-bold">Passbolt TUI</span>
			<br />
		</div>
	</div>
}

// templ Configuration(input *input) {
// 	<div>
// 		<input type="text" id="address" name="address" />
// 		<input type="text" id="password" name="password" />
// 		<input type="text" id="privateKey" name="PrivateKey" />
// 	</div>
// }
