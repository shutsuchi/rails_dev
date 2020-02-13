Rails.application.routes.draw do
  resources :contents
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope '/api' do
    get '/contents', to: 'contents#index', defaults: { format: :json }
    get '/contents/:id', to: 'contents#show', defaults: { format: :json }
  end
end
