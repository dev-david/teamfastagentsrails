class Property < ActiveRecord::Base
  attr_accessible :address, :address2, :banner, :bathrooms, :city, :description, :lot, :number, :price, :rooms, :sqft, :state, :unit, :zip, :image, :assets, :asset, :assets_attributes, :asset_file_name
  has_many :assets
  accepts_nested_attributes_for :assets, :allow_destroy => true
  has_attached_file :image, styles: { medium: "320x240>"}
  validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 10.megabytes }
end
