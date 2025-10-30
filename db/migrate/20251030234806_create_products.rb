class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :
      t.integer :price
      t.string :image_url
      t.string :description
      t.string :

      t.timestamps
    end
  end
end
