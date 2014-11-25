class AddTransactionDateToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :transaction_date, :datetime
  end
end
