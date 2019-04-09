Rails.application.routes.draw do
resources :artists, only: [:index, :new, :show, :edit, :create, :update]
resources :songs, only: [:index, :new, :show, :edit, :create, :update]
resources :genres, only: [:index, :new, :show, :edit, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
