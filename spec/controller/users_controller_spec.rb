require 'rails_helper'
require "shoulda/matchers"

RSpec.describe UsersController, :type => :controller do

  describe "GET index" do
    it "assigns @user" do
      user = User.create
      get :index
      expect(assigns(:users)).to eq([user])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end