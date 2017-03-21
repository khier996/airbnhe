class PagesController < ApplicationController
  def home
    shuffle = Man.all.shuffle
    @suggestions = shuffle[0..2]
  end
end
