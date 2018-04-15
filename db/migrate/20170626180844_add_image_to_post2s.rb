class AddImageToPost2s < ActiveRecord::Migration
  def change
    add_column :post2s, :image, :string
  end
end
