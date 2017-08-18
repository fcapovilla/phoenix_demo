defmodule PhoenixDemo.Blog.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhoenixDemo.Blog.Comment


  schema "comments" do
    field :content, :string
    field :username, :string
    belongs_to :post, PhoenixDemo.Blog.Post

    timestamps()
  end

  @doc false
  def changeset(%Comment{} = comment, attrs) do
    comment
    |> cast(attrs, [:username, :content, :post_id])
    |> validate_required([:username, :content, :post_id])
  end
end
