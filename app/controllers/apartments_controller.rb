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
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])
    if @apartment.update(apartment_params)
      redirect_to apartment_path, notice: "物件を編集しました！"
    else
      render :edit
    end
  end

  private


  def apartment_params
    params.require(:apartment).permit(:name,:price,:address,:year,:note)
  end
end
