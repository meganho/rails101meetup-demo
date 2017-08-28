class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group

 has_many :comments

  validates :content, presence: true

  scope :recent, -> { order("created_at DESC")}
end
