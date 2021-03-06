# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :teste,
  ecto_repos: [Teste.Repo]

# Configures the endpoint
config :teste, TesteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6hbtznwMND4PTgONUVc3tOjmwt3RWQVWHSqd0a1VlSHuJhbDPR8L8+Y6PkFAXE7h",
  render_errors: [view: TesteWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Teste.PubSub,
  live_view: [signing_salt: "7bPGhusG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
