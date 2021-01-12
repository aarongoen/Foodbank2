class RemovePriceFromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :price, :integer
  end
end
