class MenController < ApplicationController
  def index
    @men = Man.all
  end
end
