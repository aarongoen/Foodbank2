class AddFoodIdToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :food_id, :integer
  end
end
