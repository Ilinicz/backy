Rails.application.routes.draw do
  resources :articles, only: :index

  get '/about' => 'high_voltage/pages#show', :id => 'about'
  root :to => "visitors#index"

end
