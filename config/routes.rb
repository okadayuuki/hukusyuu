Rails.application.routes.draw do
 resources :todolist
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'homes#top', as:'top'
end
