Rails.application.routes.draw do
  get 'welcome/index'
  get 'basic_calculator/index'
  get 'basic_calculator/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
