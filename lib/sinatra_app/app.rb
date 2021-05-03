# frozen_string_literal: true

module SinatraApp
  class App < Sinatra::Application
    get "/" do
      SinatraApp::Config.app_name
    end

    get "/settings/" do
      SinatraApp::Config.to_h.to_json
    end
  end
end
