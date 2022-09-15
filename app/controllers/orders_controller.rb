class OrdersController < ApplicationController
    
    get '/orders' do
        order = Order.all
        order.to_json
    end
     
end