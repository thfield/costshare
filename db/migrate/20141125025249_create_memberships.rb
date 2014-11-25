class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
    	t.string :user_id
    	t.string :event_id

      t.timestamps null: false
    end
  end
end
