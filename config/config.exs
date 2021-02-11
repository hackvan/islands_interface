# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :islands_interface, IslandsInterfaceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+qJiV70JdYq1mgwMb6k0B+JXnqf23+/RZjtiWmU7fDDaWByH9W+n4ldMJJbKCnMe",
  render_errors: [view: IslandsInterfaceWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: IslandsInterface.PubSub,
  live_view: [signing_salt: "C4RovkBB"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
