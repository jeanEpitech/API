defmodule ApiDev.Repo do
  use Ecto.Repo,
    otp_app: :api_dev,
    adapter: Ecto.Adapters.Postgres
end
