class Address < ApplicationRecord
  belongs_to :property
  belongs_to :lga, foreign_key: :lga_code, class_name: 'Lga'
  validates_presence_of :full_address
  validates_presence_of :state
  validates_presence_of :postcode
end
