class DropSuperheros < ActiveRecord::Migration[7.0]
  def change
    drop_table :superheros, force: :cascade
  end
end
