Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # localhost:3000
  root "pages#home"

  # localhost:3000/about 
  get "about", to: "pages#about"

  # localhost:3000/news/search 
  # localhost:3000/news/javascript
  # localhost:3000/news/cybersecurity
  namespace :news do 
    get 'search', to: "search#search_feed"
    # get 'javascript', to: "category#javascript"
    # get 'cybersecurity', to: "category#cybersecurity"
  end

end
