class ChangeDateInPayments < ActiveRecord::Migration
  def change
  	change_column :payments, :transaction_date,  :date
  end
end
