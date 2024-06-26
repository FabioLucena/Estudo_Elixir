defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> number_test()

  end

  defp number_test({:ok, result}) do
    result =
      result
      |>String.split(",")
      |>Enum.map(&convert_number/1)

    {:ok, result}
  end

  defp number_test({:error, reason}), do: {:error, "Deu ruim: #{reason}"}

  defp convert_number(elem) do
    elem
    |>String.to_integer()
    |>evaluate_numbers()

  end

  defp evaluate_numbers(number) when rem(number,3) == 0 and rem(number,5) == 0 , do: :FizzBuzz
  defp evaluate_numbers(number) when rem(number,3) == 0 , do: :fizz
  defp evaluate_numbers(number) when rem(number,5) == 0 , do: :buzz
  defp evaluate_numbers(number), do: number
end
