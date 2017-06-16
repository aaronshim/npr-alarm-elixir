# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ui,
  ecto_repos: [Ui.Repo]

# Configures the endpoint
config :ui, Ui.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hxm4R6b78LKsDiqJGIWku5yoYAa8oSm7vzH495unGU4ebTAiL9Xn1K8ZInGaHdAt",
  render_errors: [view: Ui.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ui.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure Ecto to use Erlang's Mnesia in-memory store
config :ui, Ui.Repo,
  adapter: EctoMnesia.Adapter

"""
config :ecto_mnesia,
  host: {:system, :atom, "MNESIA_HOST", Kernel.node()},
  storage_type: {:system, :atom, "MNESIA_STORAGE_TYPE", :disc_copies}

config :mnesia,
  dir: 'priv/data/mnesia' # Make sure this directory exists
"""