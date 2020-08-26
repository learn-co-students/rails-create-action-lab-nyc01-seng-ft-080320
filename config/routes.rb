Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html