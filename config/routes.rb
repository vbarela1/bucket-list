Rails.application.routes.draw do

  devise_for :users
  root 'home#index'

  resources :bucketlists do
    resources :listitems
  end 
end
