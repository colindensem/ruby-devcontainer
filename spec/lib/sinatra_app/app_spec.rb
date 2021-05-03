require "spec_helper"

RSpec.describe SinatraApp::App do
  describe "GET index" do
    it "returns settings app name" do
      get "/"
      expect(last_response.body).to eq "sinatra-app"
      expect(last_response.status).to eq 200
    end

    it "returns settings json" do
      get "/settings/"
      expect(last_response.body).to eq(SinatraApp::Config.to_h.to_json)
      expect(last_response.status).to eq 200
    end
  end
end
