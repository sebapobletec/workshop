Rails.application.routes.draw do


  resources :companies do
      resources :workers
      resources :events
  end

  devise_for :users do
    resources :companies, shallow: true
  end

  root 'companies#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
