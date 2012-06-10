AcademyAirApp::Application.routes.draw do
  resources :flights, :users
	root to: 'flights#index'
	
end
