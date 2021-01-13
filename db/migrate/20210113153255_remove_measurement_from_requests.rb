class RemoveMeasurementFromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :measurement, :string
  end
end
