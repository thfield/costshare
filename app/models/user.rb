class User < ActiveRecord::Base
	before_save { self.email = email.downcase }

	has_many :payments
  has_many :events, through: :payments

  validates :name, 	presence:true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:true, 
  									length: { maximum: 255 }, 
  									format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }


	#implement clearance for password: https://github.com/thoughtbot/clearance                   
  #has_secure_password
	#validates :password, length: { minimum:6 }
end
