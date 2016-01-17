class RecordsController < ApplicationController
  before_action :set_hospital
  before_action :set_doctor

  def new
    @record = Record.new
  end

  def create
    @record = @doctor.records.new(record_params)
    if @record.save
      redirect_to hospital_doctor_path(@hospital.id, @doctor.id)
    else
      render :new
    end
  end


  private

  def set_hospital
    @hospital = Hospital.find(params[:hospital_id])
  end

  def set_doctor
    @doctor = @hospital.doctors.find(params[:doctor_id])
  end

  def record_params
    params[:record].permit(:name, :phone, :time_at)
  end
end
