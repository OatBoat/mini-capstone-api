class AddSupplierIdToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :supplierID, :integer
  end
end
