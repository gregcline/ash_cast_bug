defmodule DemoListItem do
  use Ash.Resource,
    data_layer: :embedded

  attributes do
    uuid_primary_key(:id)
    attribute(:name, :string, allow_nil?: false)
    attribute(:link, :string)
    attribute(:bought, :boolean, default: false)
    attribute(:notes, :string)
  end

  actions do
    defaults([:create, :update])
  end
end
