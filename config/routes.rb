Rails.application.routes.draw do
    root 'sweets#index'
  resources :sweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
