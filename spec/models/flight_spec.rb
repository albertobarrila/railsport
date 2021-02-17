# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Flight, type: :model do
  it { should have_many(:passengers) }
  it { should belong_to(:airplane) }
  it { should validate_presence_of(:from) }
  it { should validate_presence_of(:to) }
  it { should validate_presence_of(:departure) }
  it { should validate_presence_of(:arrival) }
end
