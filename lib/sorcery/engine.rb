require 'sorcery'
require 'rails'

module Sorcery
  # The Sorcery engine takes care of extending ActiveRecord (if used) and ActionController,
  # With the plugin logic.
  class Engine < Rails::Engine
    config.sorcery = ::Sorcery::Controller::Config

    initializer 'extend something with sorcery' do
      # NOTE: This will trigger sorcery configuration
      Module.new.include Sorcery::Controller
    end
  end
end
