VisiteUmaEscola::Application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords" }

  root  to:                     'home#index'

  get 'frontend/:template'   => 'frontend#show'
  get 'frontend'             => 'frontend#index'

  get ':slug'                => 'pages#show',     as: :page
end
