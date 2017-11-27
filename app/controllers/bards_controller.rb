class BardsController < CharactersController
  def index
    @bards = Bard.all
  end
    
  def show
    @bards = Bard.find(params[:id])
  end
  
  def create
    @bard = Bard.new(bard_params)

    if @bard.save
      redirect_to @bard
    else
      render 'new'
    end
  end
  
  def edit
    @bard = Bard.find(params[:id])
  end
  
  def update
    @bard = Bard.find(params[:id])
    
    if @bard.update(bard_params)
      redirect_to @bard
    else
      render 'edit'
    end
  end
  
  def destroy
    @bard = Bard.find(params[:id])
    @bard.destroy

    redirect_to bards_path
  end
end

private 
  def bard_params
    params.require(:bard).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end
