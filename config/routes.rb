Rails.application.routes.draw do
  resources :police_brutalities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'police_brutalities#index'
	
	get 'show' => 'police_brutalities#show'
end
