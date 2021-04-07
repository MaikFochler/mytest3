Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bands do
    resources :titles
    resources :setlists
  end
  

  #get 'bands/info'
  
  root 'bands#index'

end
