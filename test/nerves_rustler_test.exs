defmodule NervesRustlerTest do
  use ExUnit.Case
  doctest NervesRustler

  test "greets the world" do
    assert NervesRustler.hello() == :world
  end
end
