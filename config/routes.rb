Rails.application.routes.draw do
  get 'welcome/login'
  
  resources :adventures do
    resources :storylines
  end
  
  root 'welcome#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
