Website::Application.routes.draw do
  root 'static_pages#home'
  match '/projects',  to: 'static_pages#projects',  via: 'get'
  match '/about',     to: 'static_pages#about',     via: 'get'
end