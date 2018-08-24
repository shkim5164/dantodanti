class User < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
      
  has_many :blacklist
  has_many :likes
  has_many :sinchungs
  has_many :lists
  belongs_to :mentor
  

end
