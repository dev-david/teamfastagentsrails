class Asset < ActiveRecord::Base
  attr_accessible :asset_content_type, :asset_file_name, :asset_file_size, :asset_updated_at, :property_id, :asset, :asset_attributes
  belongs_to :property
  has_attached_file :asset, :styles => { :thumb=> "100x100", :small  => "300x300>", :large => "600x600>" }
end
