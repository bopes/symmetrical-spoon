Rails.application.routes.draw do
  get 'messages/create'

	resources :orders

	get 'admin' => 'static_pages#prototype_admin'
  get 'static_pages/home'
  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
