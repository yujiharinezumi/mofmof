class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]
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

  end

  def edit

  end

  def update
    if @apartment.update(apartment_params)
      redirect_to apartment_path, notice: "物件を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @apartment.destroy
    redirect_to apartments_path, notice:"物件を削除しました！"
  end

  private


  def apartment_params
    params.require(:apartment).permit(:name,:price,:address,:year,:note)
  end

  def set_apartment
    @apartment = Apartment.find(params[:id])
  end
end
