class SuperherosController < ApplicationController
  before_action :set_superhero, only: :show
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @superheroes = Superhero.where(sql_query, query: "%#{params[:query]}%")
    else
      @superheroes = Superhero.all
    end
  end

  def show
    @booking = Booking.new
    @markers = [{
      lat: @superhero.latitude,
      lng: @superhero.longitude
    }]
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
    params.require(:superhero).permit(:name, :description, :price, :superpower, :photo_url)
  end

end
