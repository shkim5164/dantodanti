class Like < ActiveRecord::Base
  belongs_to :blacklist
  belongs_to :user
end
