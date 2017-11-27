class MonksController < CharactersController
  def index
    @monks = Monk.all
  end
    
  def show
    @monks = Monk.find(params[:id])
  end
  
  def create
    @monk = Monk.new(Monk_params)

    if @monk.save
      redirect_to @Monk
    else
      render 'new'
    end
  end
  
  def edit
    @monk = Monk.find(params[:id])
  end
  
  def update
    @monk = Monk.find(params[:id])
    
    if @monk.update(Monk_params)
      redirect_to @Monk
    else
      render 'edit'
    end
  end
  
  def destroy
    @monk = Monk.find(params[:id])
    @monk.destroy

    redirect_to monks_path
  end
end

private 
  def Monk_params
    params.require(:monk).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end
