# Let's go ahead and fill in our controller. 
# You'll notice in application_controller.rb, 
# we have an ApplicationController class that inherits 
# from Sinatra::Base. When we start up a server, 
# the server will spin up an instance of the
# ApplicationController class to run our app.
class ApplicationController < Sinatra::Base

# You'll also notice there is a configure block already in the controller.
# This configure block tells the controller where to look to find the views 
# (your pages with HTML to display text in the browser) and the public directory.  
  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  # When a client makes a request to a server to load an application, 
  # the request is received and processed by the controller. 
  
  # We need to set up a controller action to accept the request and respond with the appropriate HTML.
  
  # We've created a controller action that can receive and respond 
  # to a GET request to the root URL '/'. This GET request loads the index.erb file.
  get "/" do
  	erb :index
  end
end
