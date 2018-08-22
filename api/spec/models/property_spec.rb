require 'rails_helper'

RSpec.describe Property, type: :model do
  it { should belong_to(:lga) }
  it { should have_many(:addresses).dependent(:destroy) }
  it { should validate_presence_of(:lga_code) }
  it { should validate_presence_of(:longitude) }
  it { should validate_presence_of(:latitude) }
end
