class CreateRequestItems < ActiveRecord::Migration[6.0]
  def change
    create_table :request_items do |t|
      t.integer :quantity
      t.integer :food_id
      t.integer :request_id

      t.timestamps
    end
  end
end
