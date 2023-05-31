class FixedBug < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :title, :string
  end
end
