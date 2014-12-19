class Event < ActiveRecord::Base
	#todo add index to user_id 
	has_many :memberships
  has_many :users, :through => :memberships
  has_many :payments, :dependent => :destroy

  accepts_nested_attributes_for :payments, 
           :reject_if => :all_blank, 
           :allow_destroy => true

  accepts_nested_attributes_for :memberships         
           
  validates :user_id, presence: true


end
	