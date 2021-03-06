class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :images, dependent: :destroy
  has_many :image_comments
  acts_as_voter
  # attr_accessor :email, :password, :remember_me, :avatar, :avatar_cache, :remove_avatar
  
  # validates_presence_of :avatar
  # validates_integrity_of :avatar
  # validates_processing_of :avatar
  
  def self.search(catergory, search)
    where("#{catergory} LIKE ?", "%#{search}%")
  end
  
end
