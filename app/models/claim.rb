class Claim < ApplicationRecord
  belongs_to :company
  belongs_to :user
  validates :title, presence: true
end
