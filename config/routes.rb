Rails.application.routes.draw do
  get "/breakfasts" => "breakfasts#index"
  post "/breakfasts" => "breakfasts#create"
end
