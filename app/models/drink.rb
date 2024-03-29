class Drink < ActiveRecord::Base
	validates :name,presence: true
	validates :price, presence: true, numericality:{greater_than_or_equal_to: 0, less_than: 20}
	validates :image, presence: true
	mount_uploader :image, DrinkImageUploader
end
