require 'rails_helper'

RSpec.describe Address, type: :model do
  it { should belong_to(:property) }
  it { should belong_to(:lga) }
  it { should validate_presence_of(:full_address) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:postcode) }
end
