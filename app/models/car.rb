class Car < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :mini => "40x40" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  	validates :plate, :presence => true
  	validates :brand, :presence => true
  	validates :year, :presence => true
  	validates :capacity, :presence => true
  	validates :door, :presence => true
end