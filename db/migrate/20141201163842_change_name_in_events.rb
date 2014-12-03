class ChangeNameInEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :members
  	add_column :events, :total, :decimal
  end
end
