Rails.application.routes.draw do
  get 'userland/login'
  get 'userland/logout'
  get 'userland/home'

  resources :text_logs
  resources :call_logs
  resources :customers
  resources :devices
  get 'welcome/index'
  get 'basic_calculator/index'
  get 'basic_calculator/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
