class CarpoolsController < ApplicationController
  before_action :set_carpool, only: [:show, :edit, :update, :destroy]

  
  def index
    @carpools = Carpool.all
  end

  def show
  end

  def new
    @carpool = Carpool.new
  end

  def edit
  end

  def create
    @carpool = Carpool.new(carpool_params)
      if @carpool.save
        redirect_to @carpool, notice: 'Carpool was successfully created.' 
      else
       render :new 
    end
  end

  def update
      if @carpool.update(carpool_params)
       redirect_to @carpool, notice: 'Carpool was successfully updated.' 
      else
      render :edit 
    end
  end

  def destroy
    @carpool.destroy
    redirect_to carpools_url, notice: 'Carpool was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carpool
      @carpool = Carpool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carpool_params
      params.require(:carpool).permit(:description)
    end
end
