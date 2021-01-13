class RemoveColumnsFromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :quantity, :integer
    remove_column :requests, :request_id, :integer
  end
end
