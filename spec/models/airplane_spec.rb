require 'rails_helper'

RSpec.describe Airplane, type: :model do
  it { should have_many(:flights) }
  it { should validate_presence_of(:model) }
  it { should validate_presence_of(:number) }
  it { should validate_presence_of(:seats) }
end
