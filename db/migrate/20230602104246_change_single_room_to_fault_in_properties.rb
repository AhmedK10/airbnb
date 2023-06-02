class ChangeSingleRoomToFaultInProperties < ActiveRecord::Migration[7.0]
  def change
    change_column :properties, :single_room, :boolean, default: false
  end
end
