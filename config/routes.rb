Adicu::Application.routes.draw do

  resources :authors
  resources :projects
  resources :users
  resources :resources
  resources :features
  resources :posts

  get    'login'  => 'user_session#new',     :as => :login
  post   'login'  => 'user_session#create',  :as => :login
  match 'logout' => 'user_session#destroy', :as => :logout

  match "contact", :to => "home#contact", :as => "contact"
  match "board", :to => "home#board", :as => "board"
  match "jobs", :to => "home#jobs", :as => "jobs"
  match "board_info", :to => "home#board_info", :as => "board_info"

  match "blog", :to => "posts#index", :as => "blog"
  match "devfest2011", :to => "home#devfest_2011", :as => "devfest_2011"
  match "jobfair", :to => "home#job_fair_2011", :as => "job_fair_2011"
  match "dinners", :to => "home#dinners", :as => "dinners"
  match "hacksquad", :to => "home#hacksquad", :as => "hacksquad"

  root :to => "home#index"

end
