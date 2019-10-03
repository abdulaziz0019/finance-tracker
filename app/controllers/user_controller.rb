class UserController < ApplicationController
before_action :authenticate_user!
  def my_portfolio

end

def save_news
  title = params["title"]
  @response = Stock.search_google(title)

  @currentUser = current_user.id
  @result = SearchResult.new(user_id: @currentUser, title: title, link: @response)
  if @result.save

    render json: 'saved'
  else
    render json: 'error'
  end

end
def profile
  @user = User.find(current_user.id)
end
end
