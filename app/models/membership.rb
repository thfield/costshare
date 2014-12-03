class Membership < ActiveRecord::Base
	belongs_to :user
	belongs_to :event
	# guided by http://railscasts.com/episodes/181-include-vs-joins?view=asciicast
	#and http://railscasts.com/episodes/196-nested-model-form-part-1?view=asciicast

	#but see also http://stackoverflow.com/questions/11539151/rails-mulitple-belongs-to-assignment

end
