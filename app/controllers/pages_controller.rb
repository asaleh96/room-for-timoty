class PagesController < ApplicationController
  def home
    @flats = Flat.last(6)
  end


end
