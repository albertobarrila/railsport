require 'rails_helper'

RSpec.describe Passenger, type: :model do
  it { should validate_presence_of(:firstname) }
  it { should validate_presence_of(:lastname) }
  it { should belong_to(:flight) }
end
