class RequestsController < ApplicationController
  
  def index
    @requests = Request.all
  end
  
  def show
    @request = Request.find(params[:id])
  end
  
  def new
    @request = Request.new
  end
  
  def create
    @request = Request.new(params[:request])
    if @request.save
      flash[:notice] = "RFP creado"
      redirect_to requests_path
    else
      render 'new'
    end
  end
  
end
