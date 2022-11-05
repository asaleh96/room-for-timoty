class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
    @owner = owner?(@flat)
  end

  def new
    @flat = Flat.new
  end

  def create
    params = flat_params
    params[:user] = current_user
    @flat = Flat.new(params)
    @flat.save!
    redirect_to flats_path
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
    params.require(:flat).permit(:title, :description, :address, :rent, :user, :city)
  end

  def owner?(flat)
    current_user.id == flat.user_id
  end
end
