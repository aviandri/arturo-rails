ArturoRails::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => 'high_voltage/pages#show', :id => 'index'

  resources :galleries
end
