defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  describe "sum" do
    test "sums 2 integers correctly" do
      assert Calculator.sum(2, 3) == 5
    end
  end

  describe "substract" do
    test "substract second number of first number" do
      assert Calculator.substract(5, 3) == 2
    end
  end

  describe "multiplicaton" do
    test "multiply first number by second number" do
      assert Calculator.multiply(5, 3) == 15
    end
  end

  describe "division" do
    test "divide first number by second number" do
      assert Calculator.divide(4, 2) == 2.0
    end

    test "division by zero is not allowed" do
      assert Calculator.divide(1, 0) == {:error, "Division by zero is not allowed"}
    end
  end
end
