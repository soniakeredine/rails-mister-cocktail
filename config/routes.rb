Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :create, :new]
  resources :doses, only: [ :new, :create ]
  delete '/doses/:id', to: 'doses#destroy', as: 'dose'
  root 'cocktails#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



