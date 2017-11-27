class DruidsController < CharactersController
  def index
    @druids = Druid.all
  end
    
  def show
    @druids = Druid.find(params[:id])
  end
  
  def create
    @druid = Druid.new(druid_params)

    if @druid.save
      redirect_to @druid
    else
      render 'new'
    end
  end
  
  def edit
    @druid = Druid.find(params[:id])
  end
  
  def update
    @druid = Druid.find(params[:id])
    
    if @druid.update(druid_params)
      redirect_to @druid
    else
      render 'edit'
    end
  end
  
  def destroy
    @druid = Druid.find(params[:id])
    @druid.destroy

    redirect_to druids_path
  end
end

private 
  def druid_params
    params.require(:druid).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end
