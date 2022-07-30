package main

import (
	"log"

	"github.com/gofiber/fiber/v2"
)

func main() {
	app := fiber.New()

	app.Get("/", HomeHandler)

	if err := app.Listen(":3000"); err != nil {
		log.Println("Failed to Server Listen!")
		log.Println(err)
	}
}

func HomeHandler(c *fiber.Ctx) error {
	return c.Status(200).SendString(`
		GitHub Action and GitHub Container Repository
	`)
}
