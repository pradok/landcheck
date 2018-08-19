class Lga < ActiveRecord::Base
  has_many :properties, foreign_key: :lga_code
  has_many :addresses, foreign_key: :lga_code
  validates_presence_of :code
  validates_presence_of :name
  validates_presence_of :long_name
end
