class Admin::RestaurantsController < ApplicationController

  # Mostra apenas os restaurants do admin
   def index
    @restaurants = current_user.restaurants
   end
end
