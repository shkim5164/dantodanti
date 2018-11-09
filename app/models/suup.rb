class Suup < ActiveRecord::Base
    has_many :sinchungs
    #belongs_to :mento
    
    scoped_search on: [:title]
end
