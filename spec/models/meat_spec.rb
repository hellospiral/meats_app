require 'rails_helper'

describe Meat do
  it { should validate_presence_of :name }
  it { should belong_to :category }
end
