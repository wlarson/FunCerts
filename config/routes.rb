Rails.application.routes.draw do
#  resources :taggings
#  resources :tags
  resources :certifications
  
  get 'tags/:tag', to: 'certifications#index', as: :tag, :constraints  => { :tag => /[^\/]+/ }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'certifications#index'
end
