class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    shuffle = Man.all.shuffle
    @suggestions = shuffle[0..5]
  end

  def dashboard
    @bookings = current_user.bookings
  end

  def about
  end

end
