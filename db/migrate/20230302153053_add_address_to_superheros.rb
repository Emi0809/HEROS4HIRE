class AddAddressToSuperheros < ActiveRecord::Migration[7.0]
  def change
    add_column :superheros, :address, :string
  end
end
