Rails.application.routes.draw do
  get '/idea/:id' => 'application#show'
  get '/new_idea' => 'application#new'
  get '/create_idea' => 'application#create'
  get '/idea/:id/edit' => 'application#edit'
  get '/idea/:id/update_idea' => 'application#update'
  get '/idea/:id/delete' => 'application#delete'
  get '/idea' => 'application#index'
  
  
  
end
