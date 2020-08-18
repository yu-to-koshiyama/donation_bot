Rails.application.routes.draw do
  post '/callback' => 'linebot#callback'  
  root 'points#index'
  resources :points
end
