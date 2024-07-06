defmodule  BnBankWeb.WelcomeController do
    use BnBankWeb, :controller

    def index(conn, []) do
        conn
        |> put_status(:ok)
        |> json(%{message: "Bem vindo ao BnBank"})

    end

end
