defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """
  def hello do
    "hi there"
  end

  def create_deck do
    values=["ace","two","three"]
    suits=["spades","clubs","Hearts"]
    for suit <- suits,value <- values do
      "#{value} of #{suit}"
    end

  end


  def shuffle(deck)do
    Enum.shuffle(deck)
  end

  def contains?(deck,card)do
    Enum.member?(deck,card)
  end

  def deal(deck,hand_size) do
    Enum.split(deck,hand_size)
  end
  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  # def hello do
  #   :world
  # end
end


# modules is collection of method or function
