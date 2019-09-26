class StockController < ApplicationController
  def search
    @data = params[:stock]
    @stock = Stock.new_form_lookup(params[:stock])
    render "user/my_portfolio"
  end
  def google
    title = params["title"]
    @response = Stock.search_google(title)
    redirect_to @response
    
  end
end
