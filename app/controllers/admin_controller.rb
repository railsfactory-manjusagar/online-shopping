class AdminController < ApplicationController
  def index
   @total_orders = Order.count
   
  end

  def show
     Order.all.each do |order|
       @item = order.id.product
  end
end
end
