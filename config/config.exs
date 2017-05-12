# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cribbix,
  ecto_repos: [Cribbix.Repo]

# Configures the endpoint
config :cribbix, Cribbix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1VPhUDZO6qvxHPudohix4JHnnYmwl+ia6KR3eeYK1/ibMRt0HxaVDOzsi8/lNBRt",
  render_errors: [view: Cribbix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cribbix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
