Rails.application.routes.draw do
  resources :question do
    collection do
      get "ScoreQuestion"
      get "admin_indexquestion"
      get "user_indexquestion"
      get "add_userquestion"
    end
  end
  resources :testofuser do

  end
  resources :user
  devise_for :users
  get 'search',to: "testofuser#search"
  as :user do 
    root to: "home#show"
    get "login" => "devise/sessions#new"
    post "login" => "devise/sessions#create"
    delete "logout" => "devise/sessions#destroy"
   # get "profile" =>"devise/User"

  end

 
 
  get 'queston/ScoreQuestion'
  get 'test/ViewallTest'
  # get "question/:id/edit" => "question#edit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
  