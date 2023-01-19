defmodule MinimalAshBugTest do
  use ExUnit.Case
  doctest MinimalAshBug

  test "greets the world" do
    assert MinimalAshBug.hello() == :world
  end
end
