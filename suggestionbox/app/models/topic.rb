class Topic < ApplicationRecord
  validates :title, presence: true, length: { maximum: 15 }
  validates :description, presence: true, length: { maximum: 30 }
end
