Spree Advanced Cart
=================

This extension provide replacement to Spree cart with several additional improvements like:

* coupon applying
* shipping cost precalculation


Installation
============

      Add `gem "spree_advanced_cart", :git => "git://github.com/romul/spree_advanced_cart.git"
      Run `bundle install`
      Run `rails g spree_advanced_cart:install`

Testing
============

      Clone
      Run `bundle`
      Run `bundle exec rake test_app`
      `cd spec/dunny && RAILS_ENV=test rake db:seed`

Copyright (c) 2011-2015 Roman Smirnov, Denis Ivanov
