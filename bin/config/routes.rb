Rails.application.routes.draw do

  get '/team', to: 'static#presentation'

  get '/contact', to: 'static#contact'

end
