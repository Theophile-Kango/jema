require 'rails_helper'

RSpec.describe "Pages", type: :request do

  describe "GET /my_posts" do
    it "returns http success" do
      get "/pages/my_posts"
      expect(response).to have_http_status(:success)
    end
  end

end
