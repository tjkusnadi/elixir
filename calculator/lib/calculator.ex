defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`.
  """

  @doc """
  Sum operation

  ## Examples

      iex> Calculator.sum(2, 3)
      5
  """

  def sum(num1, num2) do
    num1 + num2
  end

  @doc """
  Substract operation. Substract num2 of num1

  ## Examples

      iex> Calculator.substract(5, 3)
      2
  """
  def substract(num1, num2) do
    num1 - num2
  end

  @doc """
  Multiply operation.

  ## Examples

      iex> Calculator.multiply(5, 3)
      15
  """
  def multiply(num1, num2) do
    num1 * num2
  end

  @doc """
  Division operation. Divide num1 by num2

  ## Examples

      iex> Calculator.divide(4, 2)
      2.0
  """
  def divide(num1, num2) do
    (num1 / num2)
    |> Float.round(1)
  end
end
