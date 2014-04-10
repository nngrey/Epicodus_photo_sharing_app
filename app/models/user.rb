class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :email

  has_many :photos
  has_many :photos, through: :tags
  has_many :tags
end
