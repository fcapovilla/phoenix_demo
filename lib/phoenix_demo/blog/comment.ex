defmodule PhoenixDemo.Blog.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhoenixDemo.Blog.Comment


  schema "comments" do
    field :content, :string
    field :username, :string
    field :post_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Comment{} = comment, attrs) do
    comment
    |> cast(attrs, [:username, :content])
    |> validate_required([:username, :content])
  end
end
