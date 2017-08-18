defmodule PhoenixDemo.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :username, :string
      add :content, :string
      add :post_id, references(:blog_posts, on_delete: :nothing)

      timestamps()
    end

    create index(:comments, [:post_id])
  end
end
