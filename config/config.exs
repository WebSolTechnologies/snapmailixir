# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :snapmailixir,
  ecto_repos: [Snapmailixir.Repo]

# Configures the endpoint
config :snapmailixir, Snapmailixir.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+6+ChiwwD7P3/BlbObMNThWnngTxy9LbAYHmptCG+yFmc8PNkhaBopr27acoPBFS",
  render_errors: [view: Snapmailixir.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Snapmailixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
