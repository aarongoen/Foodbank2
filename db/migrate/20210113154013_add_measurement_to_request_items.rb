class AddMeasurementToRequestItems < ActiveRecord::Migration[6.0]
  def change
    add_column :request_items, :measurement, :string
  end
end
