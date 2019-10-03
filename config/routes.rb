Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'welcome' , to: 'welcome#index'
get 'my_portfolio' , to:'user#my_portfolio'
get 'searchstock' , to: 'stock#search'
get 'search_in_google' ,to: 'stock#google'
post 'save_in_profile' ,to: 'user#save_news'
get  'profile' , to: 'user#profile'



end
