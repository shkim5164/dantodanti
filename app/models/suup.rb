class Suup < ActiveRecord::Base
    has_many :sinchungs
    has_many :users
    belongs_to :mento
    
    scoped_search on: [:title]
end
