class WizardsController < CharactersController
  def index
    @wizards = Wizard.all
  end
    
  def show
    @wizards = Wizard.find(params[:id])
  end
  
  def create
    @wizard = Wizard.new(Wizard_params)

    if @wizard.save
      redirect_to @wizard
    else
      render 'new'
    end
  end
  
  def edit
    @wizard = Wizard.find(params[:id])
  end
  
  def update
    @wizard = Wizard.find(params[:id])
    
    if @wizard.update(Wizard_params)
      redirect_to @wizard
    else
      render 'edit'
    end
  end
  
  def destroy
    @wizard = Wizard.find(params[:id])
    @wizard.destroy

    redirect_to wizards_path
  end
end

private 
  def wizard_params
    params.require(:wizard).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armorclass, :gold)
  end

