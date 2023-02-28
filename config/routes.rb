Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  resources :quotes do
    resources :line_item_dates, except: [:index, :show] do
      resources :line_items, except: [:inde, :show]
    end
  end
end
