require 'rails_helper'

RSpec.describe SitesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    site = FactoryBot.create(:site, url: "http://www.google.com")

    it "returns http success" do
      get :show, params: { id: site.id }
      expect(response).to have_http_status(:success)
    end
  end

end
