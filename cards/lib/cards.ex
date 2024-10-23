defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """
  def hello do
    :world
  end

  @doc"""
  it is used to create deck
  """
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

  @doc """
   Divides a deck into a hand and reminder of the deck.The 'hand_size' argument indicates how
   many cards should be in the hand

  ## Examples
      iex> deck=Cards.create_deck
      iex> {hand,deck}=Cards.deal(deck,1)
      iex> hand
      ["ace of spades"]


  """
  def deal(deck,hand_size) do
    Enum.split(deck,hand_size)
  end

  def save(deck,filename) do
    binary=:erlang.term_to_binary(deck)
    File.write(filename,binary)
  end

  def load(filename) do
    {status,binary}=File.read(filename)

    case status do
      :ok -> :erlang.binary_to_term(binary)
      :error->"That file does not exist"
    end
  end

  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
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
