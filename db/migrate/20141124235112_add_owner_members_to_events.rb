class AddOwnerMembersToEvents < ActiveRecord::Migration
  def change
    add_column :events, :owner, :integer
    add_column :events, :members, :text
  end
end
