defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller
  alias Discuss.Topic
  alias Discuss.Repo

  def new(conn, _params) do
    changeset = Topic.changeset(%Topic{}, %{})
    render(conn, :new, form: %{username: "name", email: "mail"})
  end

  def create(conn, %{"topic" => topic_params}) do
    changeset = Topic.changeset(%Topic{}, topic_params)

    case Repo.insert(changeset) do
      {:ok, _topic} ->
        conn
        |> put_flash(:info, "Topic created successfully.")
        |> redirect(to: Routes.topic_path(conn, :index))

      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end
end
