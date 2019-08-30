class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit]


  # Hooray
  def index
    @animals = Animal.all
  end
  
  # Hooray
  def show
    # BeforeAction here
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animals_path
    else
      render :new
    end
  end

  def edit
    # Before Action
  end

  def update
  end

  def destroy
  end
  

  # _________________________________
    private

    def set_animal
      @animal = Animal.find(params[:id])
    end

    def animal_params
      params.require(:animal).permit(:name, :age, :species)
    end



end
