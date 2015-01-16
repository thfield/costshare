class User < ActiveRecord::Base
  attr_accessor :remember_token
	before_save { self.email = email.downcase }

	has_many :payments
  has_many :memberships
  has_many :events, :through => :memberships

  validates :name, 	presence:true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:true, 
  									length: { maximum: 255 }, 
  									format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }


	#implement 'clearance' for authent/authoriz: https://github.com/thoughtbot/clearance                   
  #has_secure_password
	#validates :password, length: { minimum:6 }

  #add activation and password reset: https://www.railstutorial.org/book/account_activation_password_reset

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end  

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
end
