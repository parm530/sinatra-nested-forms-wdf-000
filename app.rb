require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :index
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params["pirate"]["weight"], params["pirate"]["height"])
      ship1_params = params["pirate"]["ships"][0]
      @ship1 = Ship.new(ship1_params["name"], ship1_params["type"], ship1_params["booty"])
      ship2_params = params["pirate"]["ships"][1]
      @ship2 = Ship.new(ship2_params["name"], ship2_params["type"], ship2_params["booty"])
      erb :'/pirates/show'
    end
      
  end
end
