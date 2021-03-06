module SpreeAdvancedCart
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file "vendor/assets/javascripts/spree/frontend/all.js", "//= require store/advanced_cart\n"
      end

      def add_stylesheets
        inject_into_file "'vendor/assets/stylesheets/spree/frontend/all.css", " *= require store/advanced_cart\n", :before => /\*\//, :verbose => true
      end

=begin
      def add_migrations
        run 'rake railties:install:migrations FROM=spree_advanced_cart'
      end

      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           run 'rake db:migrate'
         else
           puts "Skiping rake db:migrate, don't forget to run it!"
         end
      end
=end
    end
  end
end
