class Check < ApplicationRecord
  belongs_to :site

  validates :status_code, presence: true, format: { with: /\b[0-9]{3}\b/ }
  validates :response_time, presence: true, numericality: { only_integer: true }

end
