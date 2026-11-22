package passbolt

import (
	"log/slog"
	"os"

	"github.com/joho/godotenv"
)

type client struct {
	address    string
	password   string
	privateKey string
}

func NewClient() (*client, error) {
	if err := godotenv.Load(".env"); err != nil {
		slog.Warn(".env file is not found! Using the cli arguments...")

		return &client{address: "", password: "", privateKey: ""}, err
	}

	return &client{
		address:    os.Getenv("PASSBOLT_ADDRESS"),
		password:   os.Getenv("PASSBOLT_PASSWORD"),
		privateKey: os.Getenv("PASSBOLT_PRIVATE_KEY"),
	}, nil

}
