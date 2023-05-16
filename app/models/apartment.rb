class Apartment < ApplicationRecord
  belongs_to :agent
  has_many :rooms, dependent: :destroy
  # ...
end




