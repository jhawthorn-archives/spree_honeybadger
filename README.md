# Spree Honeybadger

Integrates [spree](https://github.com/spree/spree) with the [Honeybadger Exception Notifier for Ruby and Rails](http://honeybadger.io).
This gem adds current user and order as context in exceptions, and filters out creditcard numbers and CCV.

## Installation

Add this line to your application's Gemfile:

    gem 'spree_honeybadger'

If you haven't already, perform the installation steps for the [honeybadger gem](https://github.com/honeybadger-io/honeybadger-ruby)

    $ rails generate honeybadger --api-key <Your Api Key>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
