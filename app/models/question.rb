class Question < ActiveRecord::Base
    has_many :qanswers
    belongs_to :user
end
