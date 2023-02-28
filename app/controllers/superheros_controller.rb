class SuperherosController < ApplicationController
  before_action :set_superhero, only: :show
  def index
    @superheros = Superhero.all
  end

  def show
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    @superhero.user = current_user
    if @superhero.save
      redirect_to @superhero, notice: "Your Superhero has been created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_superhero
    @superhero = Superhero.find(params[:id])
  end

  def superhero_params
    params.require(:superhero).permit(:name, :description, :price, :superpower)
  end
end
