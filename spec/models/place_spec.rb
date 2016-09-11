require 'rails_helper'

describe Place do
  it { should validate_presence_of :name }
  it { should have_many :routes }
end
