require 'rails_helper'
require "shoulda/matchers"

RSpec.describe UrlsController, :type => :controller do

  describe "GET index" do
    it "assigns @url" do
      url = Url.create
      get :index
      expect(assigns(:urls)).to eq([url])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end