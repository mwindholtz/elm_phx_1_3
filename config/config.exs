# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elm_phoenix_1_3, ElmPhoenix13.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5OUQYn26fuXMxt0Y++6Fqq6clOSzGhpnI84SycFwV99ETz/TyFQs+GhUZ4Lkw8fK",
  render_errors: [view: ElmPhoenix13.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElmPhoenix13.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
