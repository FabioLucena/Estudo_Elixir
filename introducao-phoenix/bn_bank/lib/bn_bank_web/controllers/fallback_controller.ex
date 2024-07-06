defmodule  BnBankWeb.FallbackController do
  use BnBankWeb, :controller

  alias BnBank.Users.Create
  alias BnBank.Users.User



  # defp handle_response({:ok, user}, conn) do
  #   conn
  #   |> put_status(:created)
  #   |> render(:create, user: user)
  # end

  def call(conn, {:error, changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(json: BnBankWeb.ErrorJSON)
    |> render(:error, changeset: changeset)
  end

end
