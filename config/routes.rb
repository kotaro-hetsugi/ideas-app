Rails.application.routes.draw do
  root to: 'ideas#index'

  resources :ideas ,only: [:new, :create] do
    collection do
      get 'search'
    end
  end
end
