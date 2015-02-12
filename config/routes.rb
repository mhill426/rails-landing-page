Rails.application.routes.draw do
  
  root 'landings#new'
  get 'thankyou' => 'landings#thankyou'
  get 'index' => 'landings#index'

  resources :landings
end
