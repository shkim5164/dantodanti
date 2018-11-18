#

class List < ActiveRecord::Base
    has_many :answers 
    belongs_to :user
    paginates_per 5 

end
