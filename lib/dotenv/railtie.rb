require "rails"
require "dotenv/mh"

module Dotenv
    class Railtie < Rails::Railtie
        config.before_configuration do
            Dotenv.load()
        end
    end
  end
  
  # lib/my_gem.rb
#   require "Dotenv/railtie" if defined?(Rails::Railtie)