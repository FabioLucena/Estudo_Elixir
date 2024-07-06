defmodule  BnBankWeb.UsersController do
  use BnBankWeb, :controller

  alias BnBank.Users
  alias Users.User

  action_fallback BnBankWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Users.create_user(params) do
      conn
    |> put_status(:created)
    |> render(:create, user: user)
    end

  end

  def show(conn, %{"id" => id}) do
    with {:ok, %User{} = user} <- Users.create_user(params) do
      conn
    |> put_status(:created)
    |> render(:create, user: user)
    end

  end

  # defp handle_response({:ok, user}, conn) do
  #   conn
  #   |> put_status(:created)
  #   |> render(:create, user: user)
  # end

  # defp handle_response({:error, changeset}, conn) do
  #   conn
  #   |> put_status(:bad_request)
  #   |> put_view(json: BnBankWeb.ErrorJSON)
  #   |> render(:error, changeset: changeset)
  # end

end
