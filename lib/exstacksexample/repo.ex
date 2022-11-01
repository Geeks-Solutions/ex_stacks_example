defmodule ExStacksExample.Repo do
  use Ecto.Repo,
    otp_app: :ex_stacks_example,
    adapter: Ecto.Adapters.Postgres
end
