class ViewingsController < ApplicationController
  before_action :set_flat, only: %i[new create]

  def index
    @viewings = Viewing.all
  end

  def new
    @viewing = Viewing.new
  end

  def create
    @viewing = Viewing.new(viewing_params)
    @viewing.flat = @flat
    @viewing.user = current_user
    @viewing.save!
    redirect_to viewings_path
  end

  def destroy
    @viewing = Viewing.find(params[:id])
    @viewing.destroy
    redirect_to flat_path(@viewing.flat), status: :see_other
  end

  private


  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def viewing_params
    params.require(:viewing).permit(:date, :message)
  end
end
