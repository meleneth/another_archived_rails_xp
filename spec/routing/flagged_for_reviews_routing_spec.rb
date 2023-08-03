require "rails_helper"

RSpec.describe FlaggedForReviewsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/flagged_for_reviews").to route_to("flagged_for_reviews#index")
    end

    it "routes to #new" do
      expect(get: "/flagged_for_reviews/new").to route_to("flagged_for_reviews#new")
    end

    it "routes to #show" do
      expect(get: "/flagged_for_reviews/1").to route_to("flagged_for_reviews#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/flagged_for_reviews/1/edit").to route_to("flagged_for_reviews#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/flagged_for_reviews").to route_to("flagged_for_reviews#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/flagged_for_reviews/1").to route_to("flagged_for_reviews#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/flagged_for_reviews/1").to route_to("flagged_for_reviews#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/flagged_for_reviews/1").to route_to("flagged_for_reviews#destroy", id: "1")
    end
  end
end
