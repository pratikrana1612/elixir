defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "greets the world" do

    deck_length=length(Cards.create_deck())
    assert deck_length == 9
    # assert Cards.hello() == :world
  end
end
