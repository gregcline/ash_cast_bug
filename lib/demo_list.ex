defmodule DemoList do
  use Ash.Resource,
    data_layer: Ash.DataLayer.Simple

  attributes do
    uuid_primary_key(:id)
    attribute(:name, :string, allow_nil?: false)
    attribute(:items, {:array, DemoListItem})

    create_timestamp(:created_at)
    update_timestamp(:updated_at)
  end

  actions do
    defaults([:read, :create, :update])

    create :new_list do
      primary?(true)

      validate(present(:name))
    end

    read :by_user do
      argument(:user_id, :string, allow_nil?: false)

      filter(expr(user.id == ^arg(:user_id)))
    end
  end
end
