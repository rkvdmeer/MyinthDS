require 'rails_helper'

RSpec.describe "Thofins", type: :request do
  describe "GET /thofins" do
    it "works! (now write some real specs)" do
      get thofins_path
      expect(response).to have_http_status(200)
    end
  end
end
