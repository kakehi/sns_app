class Topic < ApplicationRecord
  # Validation
  validates :title, presence: true
  
end
