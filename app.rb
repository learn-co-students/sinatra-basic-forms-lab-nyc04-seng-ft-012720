require_relative 'config/environment'
require_relative 'models/puppy.rb'


class App < Sinatra::Base

   get '/' do
       erb :index
   end

   get '/new' do
       erb :create_puppy
   end

   post '/puppy' do
       @puppy = Puppy.new(params[:name], params[:breed], params[:age])
       erb :display_puppy
   end

   get '/puppies' do
       @hash1 = Puppy.pups
       erb :display_puppies
   end


end


# Now, we need a form for a user to list a new puppy that is
# available for adoption. You can review this form in `views/create_puppy.erb`.
# Remember, you'll need to set up another controller action for a user to be
# able to view this form in the browser. The "submit" button
# of a form can be an `<input>` element with a `type` of `"submit"` (or a
# `<button>` element with a `type` of `"submit`) — a plain old `<button>`
# won't do it. If you want to change the text in the button, check out these docs: