class MonksController < CharactersController
  def index
    @Monks = Monk.all
  end
    
  def show
    @Monks = Monk.find(params[:id])
  end
  
  def create
    @Monk = Monk.new(Monk_params)

    if @Monk.save
      redirect_to @Monk
    else
      render 'new'
    end
  end
  
  def edit
    @Monk = Monk.find(params[:id])
  end
  
  def update
    @Monk = Monk.find(params[:id])
    
    if @Monk.update(Monk_params)
      redirect_to @Monk
    else
      render 'edit'
    end
  end
  
  def destroy
    @Monk = Monk.find(params[:id])
    @Monk.destroy

    redirect_to Monks_path
  end
end

private 
  def Monk_params
    params.require(:Monk).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end
