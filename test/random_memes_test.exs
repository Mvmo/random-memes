defmodule RandomMemesTest do
  use ExUnit.Case
  doctest RandomMemes

  test "greets the world" do
    assert RandomMemes.hello() == :world
  end
end
