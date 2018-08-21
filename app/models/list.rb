class List < ActiveRecord::Base
    has_many :answers 
    
    paginates_per 5 

end
