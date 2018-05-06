Rails.application.routes.draw do
  resources :androids
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'androids' => 'androids#index'
  get 'androids/sold_one/:id' => 'androids#sold_one'
end
