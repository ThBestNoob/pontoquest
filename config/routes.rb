Rails.application.routes.draw do
  root to: 'main#index'

  get "/pergunta", to: "main#answering"
  post "/pergunta", to: "main#answer"

  get "/config", to: "main#configurations" 

  resources :questions
  resources :agents
  resources :teams
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
