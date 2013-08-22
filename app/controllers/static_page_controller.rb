class StaticPageController < ApplicationController
  def index
    @jokes = Joke.paginate(:page => params[:page], :per_page => 4).order('time DESC') 
  end
end
