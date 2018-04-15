require 'rails_helper'
require "shoulda/matchers"

describe User do

  before do
    @user = User.new
    @user1 = User.new(email:"test@test.com",password: "maxy90#%",username: "test")
  end

  it "is not valid without username, email and password field" do
    expect(@user).to_not be_valid
  end

  it 'is valid with valid attributes', :focus => true do
    expect(@user1).to be_valid
  end


  #Any has_one Association with other table ex: has_one :role

  # it "has one role" do
  #   assc = described_class.reflect_on_association(:role)
  #   expect(assc.macro).to eq :has_one
  # end



end