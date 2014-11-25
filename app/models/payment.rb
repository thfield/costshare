class Payment < ActiveRecord::Base
	#todo add index to user_id and event_id
	belongs_to :event
  belongs_to :user
  
  validates :user_id, presence:true
  validates :event_id, presence:true

  validates :amount, presence:true
  validates :transaction_date, presence:true
  
  default_scope -> { order(transaction_date: :asc) }
end
