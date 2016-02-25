VisiteUmaEscola::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root  to:                     'home#index'
  #get ':slug'                => 'pages#show',     as: :page

  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords" }

  post  '/volunteers/new'          => 'volunteers#new', as: :new_volunteer
  post  '/schools/new'          => 'schools#new', as: :new_school


  #No matching route redirects to home page
  get '*path',                to: 'application#render_not_found'
end
