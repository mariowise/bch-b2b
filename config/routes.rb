Tut1::Application.routes.draw do
  
  get 'profile/show', :path => "perfil"
  get 'profile/edit', :path => "perfil/editar"
  post 'profile/edit' => "profile#update"

  devise_for :users, :path => '', :path_names => { :sign_in => "ingresar", :sign_out => "salir", :sign_up => "registro" }
  
  get "index/home"
  
  root 'index#home'
end
