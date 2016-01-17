class HospitalsController < ApplicationController

  def index
    @hospitals = Hospital.all
    @searching_hospitals = Hospital.search(params[:search], params[:id])
  end

  def create
    @hospital = Hospital.create(hospital_params)
    redirect_to root_path
  end

  def new
    @hospital = Hospital.new
  end

  def show
    @hospital = Hospital.find(params[:id])
  end

  private

  def hospital_params
    params.require(:hospital).permit(:name, :city, :address)
  end
end
