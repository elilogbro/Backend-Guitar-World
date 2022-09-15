class GuitarsController < ApplicationController

    get '/guitars' do
        guitar = Guitar.all
        guitar.to_json
      end
    
    post '/guitars' do
      guitar = Guitar.create(name: params[:name], description: params[:description], price: params[:price], image_url: params[:image_url])
      guitar.to_json
    end

end