#!/usr/bin/env elixir

args = System.argv()

defmodule Calculator do
  def perform_operation(operation, x, y) do
    case operation do
      "add" -> {:ok, "The result of adding #{x} and #{y} is #{x + y}"}
      "substract" -> {:ok, "The result of subtracting #{y} from #{x} is #{x - y}"}
      "multiply" ->  {:ok, "The result of multiplying #{x} and #{y} is #{x * y}"}
      "divide" ->
        case y do
          0 ->
            {:error, "y can't be zero when division"}
          _ ->
            {:ok, "The result of dividing #{x} by #{y} is #{x / y}"}
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
      {:ok, msg} ->
        IO.puts(msg)
      {:error, error} ->
        IO.puts("An error occurred: #{error}")
    end
  end
end

Main.run(System.argv())
