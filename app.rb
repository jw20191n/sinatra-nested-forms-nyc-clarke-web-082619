require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do 
      erb :form
    end

    post '/pirates' do 
      @pirate = Pirate.new(params["pirate"])

      params["pirate"]["ships"].each do |args|
        Ship.new(args)
      end

      @ships = Ship.all

      erb :result
    end

  end
end
