class PaladinsController < CharactersController
  def index
    @paladins = Paladin.all
  end
    
  def show
    @paladins = Paladin.find(params[:id])
  end
  
  def create
    @paladin = Paladin.new(Paladin_params)

    if @paladin.save
      redirect_to @paladin
    else
      render 'new'
    end
  end
  
  def edit
    @paladin = Paladin.find(params[:id])
  end
  
  def update
    @paladin = Paladin.find(params[:id])
    
    if @paladin.update(Paladin_params)
      redirect_to @paladin
    else
      render 'edit'
    end
  end
  
  def destroy
    @paladin = Paladin.find(params[:id])
    @paladin.destroy

    redirect_to paladins_path
  end
end

private 
  def paladin_params
    params.require(:paladin).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end
