require "rails_helper"

RSpec.describe MaestriaController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/maestria").to route_to("maestria#index")
    end

    it "routes to #show" do
      expect(get: "/maestria/1").to route_to("maestria#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/maestria").to route_to("maestria#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/maestria/1").to route_to("maestria#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/maestria/1").to route_to("maestria#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/maestria/1").to route_to("maestria#destroy", id: "1")
    end
  end
end
