Website::Application.routes.draw do
  root 'static_pages#home'
  match '/about',     to: 'static_pages#about',     via: 'get'
  match '/projects',  to: 'static_pages#projects',  via: 'get'
  match '/projects/barbot',  		to: 'projects#barbot',  		as: 'barbot', 			via: 'get'
  match '/projects/underactuation',	to: 'projects#underactuation',  as: 'underactuation',	via: 'get'
  match '/projects/planet_labs',  	to: 'projects#planet_labs',  	as: 'planet_labs',		via: 'get'
  match '/projects/hijack',  		to: 'projects#hijack',  		as: 'hijack',			via: 'get'
  match '/projects/gibbon',  		to: 'projects#gibbon',  		as: 'gibbon',			via: 'get'
  match '/projects/uocd',  			to: 'projects#uocd',  			as: 'uocd',				via: 'get'
  match '/projects/radar',  		to: 'projects#radar',  			as: 'radar',			via: 'get'
end