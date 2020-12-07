class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :target_url, presence: true, length: {minimum: 3}
  validates :description, presence: true, length: {minimum: 3}

end
