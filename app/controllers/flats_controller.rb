class FlatsController < ApplicationController
  def index
    if params[:query].present?
      @flats = Flat.search_by_city(params[:query])
      @markers = @flats.geocoded.map do |flat|
        {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: 'info_window', locals: {flat: flat})
      }
      end
    else
      @flats = Flat.all
        @markers = @flats.geocoded.map do |flat|
          {
            lat: flat.latitude,
            lng: flat.longitude,
            info_window: render_to_string(partial: 'info_window', locals: {flat: flat})
          }
        end
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @owner = owner?(@flat)
    @currency = currency(@flat)
  end

  def new
    @flat = Flat.new
  end

  def create
    params = flat_params
    params[:user] = current_user
    @flat = Flat.new(params)
    @flat.save!
    redirect_to flat_path(@flat)
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :address, :rent, :user, :city, :available_from, :photo)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def owner?(flat)
    if user_signed_in?
    current_user.id == flat.user_id
    end
  end

  def currency(flat)
    case flat.currency
    when "€ - EUR"
      "€"
    when "£ - GBP"
      "£"
    else
      "$"
    end
  end
end
