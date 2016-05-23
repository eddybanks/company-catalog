Rails.application.routes.draw do

  resources :employees
  resources :departments
  resources :projects
  root                'home#index'

  get 'about'       =>  'home#about'

  get 'faqs'        =>  'home#faqs'

  get 'contact'     =>  'home#contact'

end
