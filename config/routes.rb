Rails.application.routes.draw do
  

  get 'migrate/projects'

  get 'migrate/files'

  get 'page/home'

  get 'page/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
