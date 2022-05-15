Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # Index
  get "/", to: "home#index", as: "home"

  # List books
  get "/list", to: "list#index", as: "list_books"
  
  # Create book
  get "/add", to: "add#index", as: "add_book"
  post "/create", to: "add#create", as: "create_book"

  # Update book
  get "/edit/:id", to: "edit#index", as: "edit_book"
  post "/update/:id", to: "edit#update", as: "update_book"

  # Delete book
  delete "/remove/:id", to: "remove#delete", as: "remove_book"
end
