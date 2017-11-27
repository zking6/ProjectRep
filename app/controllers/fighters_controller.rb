class FightersController < CharactersController
  def index
    @fighters = Fighter.all
  end
    
  def show
    @fighters = Fighter.find(params[:id])
  end
  
  def create
    @fighter = Fighter.new(fighter_params)

    if @fighter.save
      redirect_to @fighter
    else
      render 'new'
    end
  end
  
  def edit
    @fighter = Fighter.find(params[:id])
  end
  
  def update
    @fighter = Fighter.find(params[:id])
    
    if @fighter.update(fighter_params)
      redirect_to @fighter
    else
      render 'edit'
    end
  end
  
  def destroy
    @fighter = Fighter.find(params[:id])
    @fighter.destroy

    redirect_to fighters_path
  end
end

private 
  def fighter_params
    params.require(:fighter).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end