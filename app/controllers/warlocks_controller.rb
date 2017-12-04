class WarlocksController < CharactersController
  def index
    @warlocks = Warlock.all
  end
    
  def show
    @warlocks = Warlock.find(params[:id])
  end
  
  def create
    @warlock = Warlock.new(Warlock_params)

    if @warlock.save
      redirect_to @warlock
    else
      render 'new'
    end
  end
  
  def edit
    @warlock = Warlock.find(params[:id])
  end
  
  def update
    @warlock = Warlock.find(params[:id])
    
    if @warlock.update(Warlock_params)
      redirect_to @warlock
    else
      render 'edit'
    end
  end
  
  def destroy
    @warlock = Warlock.find(params[:id])
    @warlock.destroy

    redirect_to warlocks_path
  end
end

private 
  def warlock_params
    params.require(:warlock).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end

