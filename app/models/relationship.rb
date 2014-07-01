class Relationship < ActiveRecord::Base
  belongs_to :user
 
 def self.dis_name(relative_user_id)
	return User.find(relative_user_id).Name
 end
 
end
