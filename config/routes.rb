Rails.application.routes.draw do
  root 'contacts#index'
  resources :contacts

  get '/about' => 'contacts#about'

  get '/add_contact' => 'contacts#new'
  post '/add_contact' => 'contacts#create'

  get '/contact' => 'contacts#contact'
  get '/contacts' => 'contacts#contacts'

  get '/delete_contact' => 'contacts#delete_contact'
  get '/not_found' => 'contacts#not_found'
  get '/search_results' => 'contacts#search_results'
  get '/update_contact' => 'contacts#update_contact'

end
