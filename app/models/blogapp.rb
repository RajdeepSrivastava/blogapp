class Blogapp < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :body, presence: true
    validates :views, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
