Rails.application.routes.draw do
  root 'gnomon#index'
  get '/:first', to: 'gnomon#one', as: 'one'
  get '/:first/:second', to: 'gnomon#two', as: 'two'
  get '/:first/:second/:third', to: 'gnomon#three', as: 'three'
  get '/:first/:second/:third/:fourth', to: 'gnomon#four', as: 'four'
  get '*path' => 'gnomon#wrong'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
