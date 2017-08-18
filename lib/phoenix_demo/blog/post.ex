defmodule PhoenixDemo.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhoenixDemo.Blog.Post


  schema "posts" do
    field :content, :string
    field :title, :string
    field :visible, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :content, :visible])
    |> validate_required([:title, :content, :visible])
  end
end
