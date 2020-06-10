class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :type
      t.string :status
      t.string :description
      t.string :icon_url
      t.integer :location_id

      t.timestamps
    end
  end
end
