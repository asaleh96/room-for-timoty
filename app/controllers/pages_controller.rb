class PagesController < ApplicationController
  def home
    @flats = Flat.last(6)
  end

  def requests
    @viewings = Viewing.all
  end
end
