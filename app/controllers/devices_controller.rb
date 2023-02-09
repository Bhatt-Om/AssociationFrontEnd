class DevicesController < ApplicationController

   before_action :find_device, only: [:edit, :update, :show, :destroy]
  def index
    @devices = Device.all 
  end

  def show
  end

  def new
    @device = Device.new 
  end

  def create
    @device = Device.new(device_params)
    @device.save 
    redirect_to devices_path
  end

  def edit
  end

  def update
    @device.update(device_params)
    redirect_to devices_path
  end

  def destroy
    @device.destroy 
    redirect_to devices_path
  end

  private 

  def device_params
    params.require(:device).permit(:name, :device_warrenty_id)
  end

  def find_device
    @device = Device.find(params[:id])
  end
end
