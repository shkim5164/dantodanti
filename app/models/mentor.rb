class Mentor < ActiveRecord::Base
    belongs_to :user
    has_many :suups
end
