use Mix.Config

# Configure your database
config :api_dev, ApiDev.Repo,
  username: "postgres",
  password: "postgres",
  database: "api_dev_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :api_dev, ApiDevWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
