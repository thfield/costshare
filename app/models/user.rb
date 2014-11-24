class User < ActiveRecord::Base
	has_many :payments
  has_many :events, through: :payments

  validates :email, presence:true
  

end
