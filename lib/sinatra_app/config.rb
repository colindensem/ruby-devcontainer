# frozen_string_literal: true

module SinatraApp
  module Config
    def self.app_name
      @app_name ||= SinatraApp::Settings.application_name
    end

    def self.to_h
      {
        app_name: app_name,
        version: SinatraApp::VERSION,
      }
    end
  end
end
