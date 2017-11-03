Rails.application.routes.draw do
  root to: 'inputs#new'

  resources :inputs, only: %i[show create new]
end
