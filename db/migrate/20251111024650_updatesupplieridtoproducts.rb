class Updatesupplieridtoproducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :supplier_id, :string
    remove_column :products, :supplierID, :string
  end
end
