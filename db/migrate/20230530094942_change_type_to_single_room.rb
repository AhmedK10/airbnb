class ChangeTypeToSingleRoom < ActiveRecord::Migration[7.0]
  def change
    remove_column :properties, :type
    add_column :properties, :single_room, :boolean, default: true
  end
end
