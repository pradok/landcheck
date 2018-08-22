class Property < ActiveRecord::Base
  belongs_to :lga, foreign_key: :lga_code, class_name: 'Lga'
  has_many :addresses, dependent: :destroy
  validates_presence_of :lga_code
  validates_presence_of :longitude
  validates_presence_of :latitude
end
