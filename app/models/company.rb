class Company < ApplicationRecord
	has_many :claims, dependent: :destroy
	validates :title, presence: true
	accepts_nested_attributes_for :claims
end
