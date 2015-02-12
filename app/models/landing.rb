class Landing < ActiveRecord::Base
	validates :email, presence: true
end
