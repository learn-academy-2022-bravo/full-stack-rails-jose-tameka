Rails.application.routes.draw do

  # root 'bravo_blog#index'
  get 'bravo_blogs' => 'bravo_blog#index', as: 'entries'
  get 'bravo_blogs/new' => 'bravo_blog#new', as: 'new_entry'
  get 'bravo_blogs/:id' => 'bravo_blog#show', as: 'entry'
  post 'bravo_blogs' => 'bravo_blog#create'

end
