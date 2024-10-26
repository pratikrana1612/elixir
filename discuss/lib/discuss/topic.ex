defmodule Discuss.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :title, :string
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end




# defmodule Explorer.Accounts.User do
#   use Ecto.Schema
#   import Ecto.Changeset

#   schema "users" do
#     field :email, :string
#     field :name, :string
#     has_many :posts,Explorer.Posts.Post

#     timestamps(type: :utc_datetime)
#   end

#   @doc false
#   def changeset(user, attrs) do
#     user
#     |> cast(attrs, [:name, :email])
#     |> validate_required([:name, :email])
#     |> unique_constraint(:email)
#   end
# end
