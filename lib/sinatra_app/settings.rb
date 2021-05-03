# frozen_string_literal: true

module SinatraApp
  class Settings < Settingslogic
    source SinatraApp.root.join("config", "settings.yml")
    load!
  end
end
