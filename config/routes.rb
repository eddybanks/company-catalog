Rails.application.routes.draw do

  root                'home#index'

  get 'about'       =>  'home#about'

  get 'faqs'        =>  'home#faqs'

  get 'contact'     =>  'home#contact'

end
