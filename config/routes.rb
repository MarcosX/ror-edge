Rails.application.routes.draw do
  get 'home/index'
  root controller: :home, action: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
