VisiteUmaEscola::Application.routes.draw do
  root  to:                     'home#index'
  #get ':slug'                => 'pages#show',     as: :page

  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords" }

  #No matching route redirects to home page
  get '*path' => redirect('/')
end
