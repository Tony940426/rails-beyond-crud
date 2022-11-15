Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    # Defines the root path route ("/")
    # root "articles#index"
    collection do
      get :top
      # get 'top' to: 'restaurants#top, as: :top_restaurants
    end

    member do
      get :chef
    end
  end
end
