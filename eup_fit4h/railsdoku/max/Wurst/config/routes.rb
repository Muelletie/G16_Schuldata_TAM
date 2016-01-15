Rails.application.routes.draw do
 root 'projects#index'
 get 'all' => 'projects#showall'
 get 'all_tasks' => 'tasks#showall'
 resources :projects do
 resources :tasks
 end
 get '*path' => 'projects#dne'
 end
