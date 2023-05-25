require "rails_helper"

RSpec.describe CiclomaestriaController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ciclomaestria").to route_to("ciclomaestria#index")
    end

    it "routes to #show" do
      expect(get: "/ciclomaestria/1").to route_to("ciclomaestria#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ciclomaestria").to route_to("ciclomaestria#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ciclomaestria/1").to route_to("ciclomaestria#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ciclomaestria/1").to route_to("ciclomaestria#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ciclomaestria/1").to route_to("ciclomaestria#destroy", id: "1")
    end
  end
end
