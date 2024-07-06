defmodule BnBank.Users do
  alias BnBank.Users.Create
  alias BnBank.Users.Get

  defdelegate create_user(params), to: Create, as: :call
  defdelegate get(id), to: Get, as: :call

end
