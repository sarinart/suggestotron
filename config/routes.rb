Rails.application.routes.draw do
	root 'topics#index'
  	resources :topics do
  		member do
  			post 'upvote'
  			delete 'downvote'
  		end
  	end
  	get '/about' => 'pages#about', as: :about


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
