require 'rails_helper'

RSpec.describe Url, type: :model do
  before do
    @url = Url.new
  end

  it 'is valid with valid attributes', :focus => true do
    expect(@url).to be_valid
  end

end
