class CreateRecommends < ActiveRecord::Migration
  def change
    create_table :recommends do |t|
      t.string :name 
      t.string :content
      t.string :image

      t.timestamps null: false
    end
  end
end
