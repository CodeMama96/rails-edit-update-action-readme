Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :new, :create, :edit, :update]
  #get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  #dynamic route that accepts an :id as a parameter that the controller can access
  #patch 'articles/:id', to: 'articles#update'
  #we're sending data to the server, so we know it's not GET, and since we're not 
  #creating a new record it shouldn't be POST. That's right- PATCH should be the 
  #HTTP verb!

  # PATCH, on the other hand, is for used for sending a set of changes to a resource.

end
