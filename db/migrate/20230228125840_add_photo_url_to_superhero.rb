class AddPhotoUrlToSuperhero < ActiveRecord::Migration[7.0]
  def change
    add_column :superheros, :photo_url, :string
  end
end
