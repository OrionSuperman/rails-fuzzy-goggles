class Secret < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes, source: :user
  validates :content, presence: true, length: {in: 2..200}
end