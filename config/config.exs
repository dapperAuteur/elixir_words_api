# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_words_api,
  ecto_repos: [ElixirWordsApi.Repo]

# Configures the endpoint
config :elixir_words_api, ElixirWordsApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4RiQ8B1wVOi7TyL8vzIuMBciiSI49u82TjAonV9Y6GcODaKjtKrVYXNrd7v5vfjJ",
  render_errors: [view: ElixirWordsApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirWordsApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mix_docker, image: "elixir_words_api"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
