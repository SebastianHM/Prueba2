Rails.application.routes.draw do
  
  
	resources :figures
  


	
	# For details on the DSL available within this file, 
	
	
#see http://guides.rubyonrails.org/routing.html

	
	
	get '/figures' => 'figures#index'
	
	
	get '/figure/new' => 'figures#new'
	
	
	post '/figures' => 'figures#create'
	
	
	get '/figure/:id' => 'figures#show', as: 'fig'
	
	
	get '/figures/:id/edit' => 'figures#edit', as: 'editfigure'
	
	
	patch '/figure/:id' => 'figures#update'
	
	
	put '/figure/:id' => 'figures#update'
	
	
	delete '/figure/:id' => 'figures#destroy'

	
	get '/pictures' => 'pictures#index'
	get '/picture/new' => 'pictures#new'
	post '/pictures' => 'pictures#create'






end
