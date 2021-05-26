require "rails_helper"

RSpec.describe SessionExercisesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/session_exercises").to route_to("session_exercises#index")
    end

    it "routes to #show" do
      expect(get: "/session_exercises/1").to route_to("session_exercises#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/session_exercises").to route_to("session_exercises#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/session_exercises/1").to route_to("session_exercises#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/session_exercises/1").to route_to("session_exercises#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/session_exercises/1").to route_to("session_exercises#destroy", id: "1")
    end
  end
end
