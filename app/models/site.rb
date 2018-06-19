class Site < ApplicationRecord

	has_many :checks
	accepts_nested_attributes_for :checks


	validates :url, presence: true

end
