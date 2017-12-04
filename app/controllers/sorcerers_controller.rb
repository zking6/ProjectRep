class SorcerersController < CharactersController
  def index
    @sorcerers = Sorcerer.all
  end
    
  def show
    @sorcerers = Sorcerer.find(params[:id])
  end
  
  def create
    @sorcerer = Sorcerer.new(Sorcerer_params)

    if @sorcerer.save
      redirect_to @sorcerer
    else
      render 'new'
    end
  end
  
  def edit
    @sorcerer = Sorcerer.find(params[:id])
  end
  
  def update
    @sorcerer = Sorcerer.find(params[:id])
    
    if @sorcerer.update(Sorcerer_params)
      redirect_to @sorcerer
    else
      render 'edit'
    end
  end
  
  def destroy
    @sorcerer = Sorcerer.find(params[:id])
    @sorcerer.destroy

    redirect_to sorcerers_path
  end
end

private 
  def sorcerer_params
    params.require(:sorcerer).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end
