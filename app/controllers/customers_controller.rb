class CustomersController < ApplicationController

    get '/customers' do
        customers = Customer.all
        customers.to_json
      end
    
    delete '/customers/:id' do
        customer = Customer.find(params[:id])
        customer.destroy
        customer.to_json
    end
    
    patch '/customers/:id' do
        customer = Customer.find_by(id: params[:id])
        params.each do |key, value|
            customer[key] = params[key]
        end
        customer.save
        customer.to_json
    end

    post '/customers' do
        customer = Customer.create(name: params[:name], phone: params[:phone], address: params[:address], email: params[:email], password: params[:password])
        customer.to_json
    end

end