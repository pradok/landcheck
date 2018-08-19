require 'rails_helper'

RSpec.describe Lga, type: :model do
  it { should have_many(:properties) }
  it { should have_many(:addresses) }
  it { should validate_presence_of(:code) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:long_name) }
end
