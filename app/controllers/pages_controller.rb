class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    shuffle = Man.all.shuffle
    @suggestions = shuffle[0..5]
    @men_coordinates = @suggestions.map { |man| {lat: man.latitude, lng: man.longitude} }
  end
end
