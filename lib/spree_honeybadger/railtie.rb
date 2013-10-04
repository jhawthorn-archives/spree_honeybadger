require 'rails/railtie'
require 'honeybadger'

require 'spree_honeybadger/controller'

module SpreeHoneybadger
  class Railtie < Rails::Railtie
    initializer "honeybadger filter params" do
      Honeybadger.configure do |config|
        config.params_filters.concat [
          :password, :password_confirmation, :number, :verification_value
        ]
      end
    end
    config.to_prepare do
      Spree::BaseController.send(:include, SpreeHoneybadger::Controller)
    end
  end
end
