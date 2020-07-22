class V1::OrdersController < ApplicationController
  
  def newOrder
  	
  	total_price = 0
  	#work out total first
  	#create a new order with customer id and total price
    #create purchases for each item in the order using the new order number
    params["order"].each do 
      |x| total_price += x["itemPrice"].to_f 
    end

    @order = Order.create(user_id: params["userId"], total: total_price)
    params["order"].each do |x| Purchase.create(order_id: @order.id, 

    	product_id: x["itemId"],
    	quantity: 1) 
    end
  	render json: {"response": "Order created", "order": @order}
  end

  def allOrders
    binding.pry
  end
end
