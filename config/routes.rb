Rails.application.routes.draw do
  get 'bookers/show'
  get 'bookers/index'
  get 'bookers/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookers
end
