Rails.application.routes.draw do
  get "/breakfasts" => "breakfasts#index"
  post "/breakfasts" => "breakfasts#create"
  get "/breakfasts/:id" => "breakfasts#show"
  patch "/breakfasts/:id" => "breakfasts#update"
  delete "/breakfasts/:id" => "breakfasts#destroy"
end
