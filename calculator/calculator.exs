#!/usr/bin/env elixir

args = System.argv()

defmodule Calculator do
  def perform_operation(operation, x, y) do
    case operation do
      "add" -> {:ok, x + y}
      "substract" -> {:ok, x - y}
      "multiply" -> {:ok, x * y}
      "divide" ->
        case y do
          0 ->
            {:error, "y can't be zero when division"}
          _ ->
            {:ok, x / y}
        end
      _ -> {:error, "Unknown Operation"}
    end
  end
end

defmodule Main do
  def run(args) do
    [operation | [x | [y | _]]] = args
    operation = String.downcase(operation)

    {x , y} = {String.to_integer(x), String.to_integer(y)}

    case Calculator.perform_operation(operation, x, y) do
      {:ok, result} ->
        IO.puts("The result of #{operation} #{x} #{y} is #{result}")
      {:error, error} ->
        IO.puts("An error occurred: #{error}")
      _ ->
        IO.puts("Unknown error")
    end
  end
end

Main.run(System.argv())
