# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :showrunner,
  ecto_repos: [Showrunner.Repo]

# Configures the endpoint
config :showrunner, Showrunner.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jppr3PkmDZulKLFaLg+7Xi4EvyZctyihhVg4iNECwiEiA+SZl1vKaOSN3BWTP8R0",
  render_errors: [view: Showrunner.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Showrunner.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
