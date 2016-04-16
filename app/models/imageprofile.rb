class Imageprofile < ActiveRecord::Base
  belongs_to :user

  has_attached_file :profile_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :profile_image, content_type: /\Aimage\/.*\Z/

  has_attached_file :wall_image, styles: { medium: "410x1075>", thumb: "410x1075>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :wall_image, content_type: /\Aimage\/.*\Z/
end
