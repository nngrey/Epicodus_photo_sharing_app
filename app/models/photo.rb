class Photo < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :user
  has_many :tags
  has_many :users, through: :tags

  has_attached_file :image, styles: {main: "200x200>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
