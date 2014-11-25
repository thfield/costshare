class RenameOwnerInEvents < ActiveRecord::Migration
  def change
  	rename_column :events, :owner, :user_id
  end
end
