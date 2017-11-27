class BarbariansController < CharactersController
  def index
    @barbarians = Barbarian.all
  end
    
  def show
    @barbarians = Barbarian.find(params[:id])
  end
  
  def create
    @barbarian = Barbarian.new(barbarian_params)

    if @barbarian.save
      redirect_to @barbarian
    else
      render 'new'
    end
  end
  
  def edit
    @barbarian = Barbarian.find(params[:id])
  end
  
  def update
    @barbarian = Barbarian.find(params[:id])
    
    if @barbarian.update(barbarian_params)
      redirect_to @barbarian
    else
      render 'edit'
    end
  end
  
  def destroy
    @barbarian = Barbarian.find(params[:id])
    @barbarian.destroy

    redirect_to barbarians_path
  end
end

private 
  def barbarian_params
    params.require(:barbarian).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end
