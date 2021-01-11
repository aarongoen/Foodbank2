class AddRequestIdToFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :request_id, :integer
  end
end
