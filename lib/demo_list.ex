defmodule DemoList do
  use Ash.Resource,
    data_layer: Ash.DataLayer.Simple

  attributes do
    uuid_primary_key(:id)
    attribute(:items, {:array, DemoListItem})
  end

  actions do
    defaults([:read, :create, :update])

    create :new_list do
      primary?(true)

      validate(present(:name))
    end
  end
end
