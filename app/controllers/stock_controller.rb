class StockController < ApplicationController
  def search
    if params[:stock].present?
      @data = params[:stock]
      @stock = Stock.new_form_lookup(params[:stock])
      if @stock
      respond_to do | format |
        format.js  {render partial: 'user/result'}
    end
  end
    else
      respond_to do | format |
      flash.now[:danger] = "pleae enter a word at least"
      format.js  {render partial: 'user/result'}
    end
end

end
  def google
    title = params["title"]
    @response = Stock.search_google(title)
    redirect_to @response
end
end
