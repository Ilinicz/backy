Rails.application.routes.draw do
  resources :articles

  get '/about' => 'high_voltage/pages#show', :id => 'about'
  root :to => "visitors#index"

end
