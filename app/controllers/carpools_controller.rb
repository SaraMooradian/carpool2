class CarpoolsController < ApplicationController
  before_action :set_carpool, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :show]
  
  def index
    @carpools = Carpool.all
  end

  def show
  end

  def new
    @carpool = current_user.carpools.build
  end

  def edit
  end

  def create
    @carpool = current_user.carpools.build(carpool_params)
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

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carpool
      @carpool = Carpool.find(params[:id])
    end
  def correct_user
    @carpool = current_user.carpools.find_by(params[:id])
    redirect_to carpools_path, notice: "Not authorized to edit this carpool" if @carpool.nil?
  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def carpool_params
      params.require(:carpool).permit(:description)
    end
end