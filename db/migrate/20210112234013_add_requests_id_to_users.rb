class AddRequestsIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :request_id, :integer
  end
end
