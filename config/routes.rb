Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'finder#index'

  # below is redundant
  #get '/', to: 'finder#index', as: 'index'

  get '/customers/missing_email', to: 'finder#missing_email', as: 'missing_email'
  get '/customers/alphabetized', to: 'finder#alphabetized', as: 'alphabetized'

end
