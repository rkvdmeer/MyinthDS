require "rails_helper"

RSpec.describe ThofinsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/thofins").to route_to("thofins#index")
    end

    it "routes to #new" do
      expect(:get => "/thofins/new").to route_to("thofins#new")
    end

    it "routes to #show" do
      expect(:get => "/thofins/1").to route_to("thofins#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/thofins/1/edit").to route_to("thofins#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/thofins").to route_to("thofins#create")
    end

    it "routes to #update" do
      expect(:put => "/thofins/1").to route_to("thofins#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/thofins/1").to route_to("thofins#destroy", :id => "1")
    end

  end
end
