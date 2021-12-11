Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # afficher toutes les taches
  get 'tasks', to: 'tasks#index'
  # create une Tache
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # afficher 1 tache
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update une tache
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update', as: :update
  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
