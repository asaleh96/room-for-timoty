class ViewingsController < ApplicationController

def index
    @viewings = Viewing.all
end
# def new
#   @flat = Flat.find(params[flat:id])
#   @viewing = Viewing.new
# end

def create
    @viewing = Viewing.new(viewing_params)
    @viewing.flat = @flat
    @viewing.save
end

def show
    @viewing = Flat.find(viewing_params)
end

private

def viewing_params
    params.require(:viewing).permit(:content)
end
end
