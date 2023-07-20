Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'
  
  # この行を追加
  post 'posts/new', to: 'posts#create', as: 'create_post'
  
  # 課題 2
  # get 'XXX', to: 'AAA#bbb', as: 'bbb_AAA'
  
  # 課題 3
  get 'topics/new', to: 'topics#new', as: 'new_topic'
  get 'topics/edit', to: 'topics#edit', as: 'edit_topic'
  
  # 2-7 課題 2
  get '/', to: 'posts#index', as: 'index_posts'
  
  
  #2-9 
  #課題 3
  post 'topics/new', to: 'topics#create', as: 'create_topic'
  #課題 5
  post 'topics/edit', to: 'topics#update', as: 'update_topic'
  
  #2-11
  #課題 1
  get 'topics/', to: 'topics#index', as: 'index_topics'
  
end
