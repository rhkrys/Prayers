require "spec_helper"

describe PrayerrequestsController do
  describe "routing" do

    it "routes to #index" do
      get("/prayerrequests").should route_to("prayerrequests#index")
    end

    it "routes to #new" do
      get("/prayerrequests/new").should route_to("prayerrequests#new")
    end

    it "routes to #show" do
      get("/prayerrequests/1").should route_to("prayerrequests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prayerrequests/1/edit").should route_to("prayerrequests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prayerrequests").should route_to("prayerrequests#create")
    end

    it "routes to #update" do
      put("/prayerrequests/1").should route_to("prayerrequests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prayerrequests/1").should route_to("prayerrequests#destroy", :id => "1")
    end

  end
end
