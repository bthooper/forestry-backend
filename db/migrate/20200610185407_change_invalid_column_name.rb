class ChangeInvalidColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :resources, :type, :category
  end
end
