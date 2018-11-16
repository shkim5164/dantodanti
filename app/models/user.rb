class User < ActiveRecord::Base
  rolify
  
  mount_uploader :image, ImageUploader
  
  # #좋아요
  # act_as_liker
  # validates :username
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
      
  has_many :blacklist
  has_many :likes
  has_many :sinchungs
  has_many :lists
  has_many :suup
  belongs_to :mentor
  

end
