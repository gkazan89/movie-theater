Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    post "/users" => "users#create"

    get "/theaters" => "theaters#index"
    get "/theaters/:id" => "theaters#show"
    post "/theaters" => "theaters#create"
    patch "/theaters/:id" => "theaters#update"
    delete "/theaters/:id" => "theaters#destroy"

    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    delete "/movies/:id" => "movies#delete"

    get "/showtimes" => "showtimes#index"
    post "/showtimes" => "showtimes#create"
    patch "/showtimes/:id" => "showtimes#update"
    delete "/showtimes/:id" => "showtimes#delete"

    get "/tickets" => "tickets#index"
    post "/tickets" => "tickets#create"
    get "/tickets/:id" => "tickets#show"
  end
end
