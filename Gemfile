source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "~> 2.7.2"

# App Framework
gem "sinatra"

# Server
gem "puma"

# Configuration
gem "dotenv"
gem "figaro"
gem "settingslogic"

# Foreman (so we can export systemd config files)
gem "foreman"

group :development do
  gem "rufo"
  gem "solargraph"
end

group :test do
  gem "rspec"
  gem "rack-test"
end
