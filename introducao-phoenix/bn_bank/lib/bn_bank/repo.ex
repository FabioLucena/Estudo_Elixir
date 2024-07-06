defmodule BnBank.Repo do
  use Ecto.Repo,
    otp_app: :bn_bank,
    adapter: Ecto.Adapters.Postgres
end
