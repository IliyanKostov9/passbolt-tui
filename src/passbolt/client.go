package passbolt

import (
	"log/slog"
	"os"

	"github.com/joho/godotenv"
)

type Client struct {
	Address    string
	Password   string
	PrivateKey string
}

func NewClient() *Client {
	if err := godotenv.Load(); err != nil {
		slog.Error("Error loading .env file!")
	}

	return &Client{
		Address:    os.Getenv("PASSBOLT_ADDRESS"),
		Password:   os.Getenv("PASSBOLT_ADDRESS"),
		PrivateKey: os.Getenv("PASSBOLT_ADDRESS"),
	}

}
