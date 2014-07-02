class User < ActiveRecord::Base 
	has_many :relationships

	def self.display_name(relative_user_id) 
		@user = User.find(relative_user_id)
		return @user.name
	end
	def tot_fam
		return self.relationships.count
	end

	def tot_breakdown(relationship_type)
		
	    if relationship_type == 'Mom'
	       return 'Mom'
	    elsif relationship_type == 'Sister'
	       return 'Sister'
	     elsif relationship_type == 'Brother'
	     	return 'Brother'
	    elsif relationship_type == 'Father'
	    	return 'Father'
	   	elsif relationship_type == 'Son'
	   		return 'Son'
	   	elsif relationship_type == "Daughter"
	   		return 'Daughter'
	   	elsif relationship_type == "Uncle" 
	   		return 'Uncle'
	   	elsif relationship_type =="Aunt"
	   		return 'Aunt'
	   	elsif relationship_type == "Cousin"
	   		return 'Cousin'
	    else
	    	nil
	    end
    end
end
