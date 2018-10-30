Rails.application.routes.draw do

  get '/', to: 'static#bienvenue'

  get 'bienvenue/:first_name', to: 'static#bienvenue'

  get '/team', to: 'static#presentation'

  get '/contact', to: 'static#contact'

  get '/detailgossip/:id', to: 'static#detailgossip', as: "detailgossip"
end
