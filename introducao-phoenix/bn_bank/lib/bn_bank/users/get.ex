defmodule BnBank.Users.Get do
  alias BnBank.Users.User
  alias BnBank.Repo

  def call(id) do
   case (Repo.get(user, id)) do
    nil -> {:error, :not_found}
    user -> {:ok, user}

   end
  end

  # defp handle_insert({:ok, user}), do: user
  # defp handle_insert({:error, changeset}), do: changeset

end
