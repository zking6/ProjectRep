class RoguesController < CharactersController
  def index
    @rogues = Rogue.all
  end
    
  def show
    @rogues = Rogue.find(params[:id])
  end
  
  def create
    @rogue = Rogue.new(Rogue_params)

    if @rogue.save
      redirect_to @rogue
    else
      render 'new'
    end
  end
  
  def edit
    @rogue = Rogue.find(params[:id])
  end
  
  def update
    @rogue = Rogue.find(params[:id])
    
    if @rogue.update(Rogue_params)
      redirect_to @rogue
    else
      render 'edit'
    end
  end
  
  def destroy
    @rogue = Rogue.find(params[:id])
    @rogue.destroy

    redirect_to rogues_path
  end
end

private 
  def rogue_params
    params.require(:rogue).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end
