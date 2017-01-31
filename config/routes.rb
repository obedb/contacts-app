Rails.application.routes.draw do
 root to: 'members#index'
 get "/members", to: 'members#index' 
 get "/members/new", to: 'members#new'
 post "/members/search", to: 'members#search'
 get "/members/:id", to: 'members#show'
 post "/members", to: 'members#create'
 get "members/:id/edit", to: 'members#edit'
 patch "members/:id", to: 'members#update'
 delete "members/:id", to: 'members#destroy'
end
