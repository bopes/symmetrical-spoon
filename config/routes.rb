Rails.application.routes.draw do

  post 'static_pages/message'  => 'static_pages#admin_message'
  post 'static_pages/order' 	 => 'static_pages#admin_order'
  post 'static_pages/location' => 'static_pages#admin_location'

	resources :orders
	resources :locations
  resources :messages

	get 'admin' => 'static_pages#prototype_admin'
  get 'static_pages/home'
  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
