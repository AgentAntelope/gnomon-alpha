Rails.application.routes.draw do
  root 'gnomon#index'
  get '/:first', to: 'gnomon#index', as: 'one'
  get '/:first/:second', to: 'gnomon#index', as: 'two'
  get '/:first/:second/:third', to: 'gnomon#index', as: 'three'
  get '/:first/:second/:third/:fourth', to: 'gnomon#index', as: 'four'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
