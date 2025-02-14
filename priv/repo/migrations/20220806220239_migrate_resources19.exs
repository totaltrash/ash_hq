defmodule AshHq.Repo.Migrations.MigrateResources19 do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    alter table(:guides) do
      remove :sanitized_name
    end
  end

  def down do
    alter table(:guides) do
      add :sanitized_name, :text, null: false
    end
  end
end
