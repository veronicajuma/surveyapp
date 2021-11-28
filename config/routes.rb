Rails.application.routes.draw do
  resources :onlinesurveys
  resources :mysurveys
  resources :surveys
  root 'onlinesurveys#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
