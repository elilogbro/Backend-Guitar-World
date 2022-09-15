class OrdersController < ApplicationController
    
    get '/orders' do
        order = Order.all
        order.to_json
    end

    post '/orders' do
        order = Order.create(purchase_date: Time.now, order_number: rand(11111..99999), guitar_id: params[:guitar_id], customer_id: params[:customer_id])
        order.to_json
    end

    get '/orders/:id' do
        orders = Customer.find_by(id: params[:id]).orders
        orders.to_json(include: :guitar)
    end
     
end