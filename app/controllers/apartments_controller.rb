class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new


  end

  def create
    @apartment = Apartment.create(apartment_params)

    redirect_to apartments_path
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def edit
  end

  private


  def apartment_params
    params.require(:apartment).permit(:name,:price,:address,:year,:note)
  end
end
