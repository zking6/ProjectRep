class RangersController < CharactersController
  def index
    @rangers = Ranger.all
  end
    
  def show
    @rangers = Ranger.find(params[:id])
  end
  
  def create
    @ranger = Ranger.new(Ranger_params)

    if @ranger.save
      redirect_to @ranger
    else
      render 'new'
    end
  end
  
  def edit
    @ranger = Ranger.find(params[:id])
  end
  
  def update
    @ranger = Ranger.find(params[:id])
    
    if @ranger.update(Ranger_params)
      redirect_to @ranger
    else
      render 'edit'
    end
  end
  
  def destroy
    @ranger = Ranger.find(params[:id])
    @ranger.destroy

    redirect_to rangers_path
  end
end

private 
  def ranger_params
    params.require(:ranger).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end
