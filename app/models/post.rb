class Post < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

	validates :image, presence: true
	validates :title, presence: true
  	validates :description, presence: true
  	validates :price, presence: true

  	def image_url
  		image.url(:medium)
  		
  	end
end
