class User < ActiveRecord::Base 
	has_many :relationships

	def self.display_name(relative_user_id) 
		@user = User.find(relative_user_id)
		return @user.Name
	end
	def tot_fam
		return self.relationships.count
	end

	def tot_breakdown(relationship_type)
	    if relationship_type == 'brother'
	       return 'brother'
	    elsif relationship_type == 'sister'
	       return 'sister'
	     elsif relationship_type == 'mom'
	     	return 'mom'
	    elsif relationship_type == 'father'
	    	return 'father'
	     	
	    else
	    	nil
	    end
    end
end
