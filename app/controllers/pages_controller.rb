class PagesController < ApplicationController
  def home
    @flats = Flat.last(3)
  end


end
