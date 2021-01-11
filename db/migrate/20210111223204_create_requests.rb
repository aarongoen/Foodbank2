class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :quantity
      t.float :price
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
