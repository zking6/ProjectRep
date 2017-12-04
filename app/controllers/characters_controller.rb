class CharactersController < ApplicationController
  #variables and types
  #def name:string
  #end

  #def background:text
  #end

  #def race:string
  #end

  #def classes:string
  #end
  def index
    @characters = Character.all
  end
    
  def show
    @character = Character.find(params[:id])
    @characters = Character.all
  end
  
  def new
    @character = Character.new
  end
  
  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to @character
    else
      render 'new'
    end
  end
  
  def edit
    @character = Character.find(params[:id])
  end
  
  def update
    @character = Character.find(params[:id])
    
    if @character.update(character_params)
      redirect_to @character
    else
      render 'edit'
    end
  end
  
  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to characters_path
  end
end

private 
  def character_params
    params.require(:characters).permit(:name, :background)
  end