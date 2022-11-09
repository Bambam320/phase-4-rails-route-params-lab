Rails.application.routes.draw do
  get '/students', to: 'students#all'
  get '/students/:id', to: 'students#show'
  get '/students?name=value', to: 'students#index'
end
