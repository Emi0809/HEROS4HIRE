class CreateSuperheros < ActiveRecord::Migration[7.0]
  def change
    create_table :superheros do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :superpower

      t.timestamps
    end
  end
end
