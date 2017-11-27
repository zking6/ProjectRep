class ClericsController < CharactersController
  def index
    @clerics = Cleric.all
  end
    
  def show
    @clerics = Cleric.find(params[:id])
  end
  
  def create
    @cleric = Cleric.new(cleric_params)

    if @cleric.save
      redirect_to @cleric
    else
      render 'new'
    end
  end
  
  def edit
    @cleric = Cleric.find(params[:id])
  end
  
  def update
    @cleric = Cleric.find(params[:id])
    
    if @cleric.update(cleric_params)
      redirect_to @cleric
    else
      render 'edit'
    end
  end
  
  def destroy
    @cleric = Cleric.find(params[:id])
    @cleric.destroy

    redirect_to clerics_path
  end
end

private 
  def cleric_params
    params.require(:cleric).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end
