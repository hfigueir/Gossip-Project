Rails.application.routes.draw do
  get '/home', to: 'static#home'
  get '/home/:first_name', to: 'static#home'
  get '/team', to: 'static#presentation'
  get '/contact', to: 'static#show_contact'
  get '/gossip/:id', to: 'static#gossip', as: 'gossip'
end

=begin
Rails.application.routes.draw do
  root 'static#home'
  get '/home/:first_name', to: 'static#home'
  get '/team', to: 'static#presentation'
  get '/contact', to: 'static#show_contact'
end
=end
