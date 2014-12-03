class AddFieldsToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :spent, :decimal
    add_column :memberships, :share, :decimal
    add_column :memberships, :owed, :decimal
  end
end
