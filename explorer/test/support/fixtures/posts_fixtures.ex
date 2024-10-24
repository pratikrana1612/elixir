defmodule Explorer.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Explorer.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        title: "some title"
      })
      |> Explorer.Posts.create_post()

    post
  end
end
