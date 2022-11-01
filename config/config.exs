# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :ex_stacks_example,
  ecto_repos: [ExStacksExample.Repo]

# Configures the endpoint
config :ex_stacks_example, ExStacksExampleWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: ExStacksExampleWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ExStacksExample.PubSub,
  live_view: [signing_salt: "74UYMQhm"]

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.14.29",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :ex_stacks,
  node_url: "https://stacks-node-api.mainnet.stacks.co",
  node_ws_url: "wss://stacks-node-api.testnet.stacks.co/extended/v1/ws"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
