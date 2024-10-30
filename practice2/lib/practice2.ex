defmodule Practice2 do
  defstruct name: "", country: ""

  @type t :: %Practice2{
          name: String.t(),
          country: String.t()
        }

  @spec all :: [t()]
  def all() do
    [
      %Practice2{name: "taj mahal", country: "india"},
      %Practice2{name: "taj mahal", country: "india"},
      %Practice2{name: "taj mahal", country: "india"},
      %Practice2{name: "taj mahal", country: "india"},
      %Practice2{name: "taj mahal", country: "india"},
      %Practice2{name: "taj mahal", country: "india"},
      %Practice2{name: "taj mahal", country: "india"}
    ]
  end

  @spec print_names([t()]) :: :ok
  def print_names(wonders) do
    wonders |> Enum.each(fn %{name: name} -> IO.puts(name) end)
  end


  @spec filter_by_country([t()],String.t()) :: [t()]
  def filter_by_country(wonders, country) do
    wonders |> Enum.filter(fn %{country: country_name} -> country_name = country end)
  end

  def in_countries_starting_with_i(wonders) do
    wonders |> Enum.filter(fn %{country: country} -> String.starts_with?(country,"i") end)
  end

  def sort_it(wonders)do
    wonders |> Enum.sort(fn x,y -> String.length(x)<String.length(y) end)
  end


  def name_country_list(wonders) do
    wonders |> Enum.reduce([],fn wonder,acc -> [[wonder.name,wonder.country] | acc] end)
  end

  def country_name_list(wonders) do
    wonders |> Enum.reduce([],fn wonder,acc -> [{String.to_atom(wonder.name),wonder.country} | acc] end)
  end

  def all_names(wonders) do
    for %{name: name} <- wonders, do: name
  end
end
