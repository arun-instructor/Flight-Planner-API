Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => { registrations: "users/registrations", sessions: "users/sessions" }

  delete "/routes/:id/nodes/clear", to: "routes#destroy_all_nodes"

  resources :routes do
    resources :nodes
  end


end
