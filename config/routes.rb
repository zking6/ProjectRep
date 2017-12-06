Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :characters do
    resources :comments
  end
  
get "characters/new" => "characters#new"
  root 'welcome#index'
 
 
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
