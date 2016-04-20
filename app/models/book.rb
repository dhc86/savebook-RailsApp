class Book < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :lends, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :events, dependent: :destroy

  validates :title, presence: true, length: { maximum: 500, message: 'is too long (maximum is 500 characters)' }
  validates :author, presence: true
  validates :isbn, presence: true
  validates :description, presence: true
  validates :picture_url, presence: true
end
