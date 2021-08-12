# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :school,
  ecto_repos: [School.Repo]

# Configures the endpoint
config :school, SchoolWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "48Qb9pGqW6l6EB3Va6RljS72L/YOPfED+XPnf6nMN/PpU5LemABRhBDdMRsddltr",
  render_errors: [view: SchoolWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: School.PubSub,
  live_view: [signing_salt: "oUE7Vish"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
