class Message < ApplicationRecord
    validates :name, length: { maximum: 30 }, presence: true
    validates :body, length: { minimum: 2, maximum: 255 }, presence: true
end
