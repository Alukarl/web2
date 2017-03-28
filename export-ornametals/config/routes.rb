Rails.application.routes.draw do
  resources :calculates
  patch '/calculates/:id/calcular', to: 'calculates#calcular'
  resources :containerts
  resources :ways
  resources :plants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
