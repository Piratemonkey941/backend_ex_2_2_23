module News 
  class SearchController < ApplicationController
    def search_feed 
      @issues = Issue.search(params[:query])
      @users = User.search(params[:query])
    end
  end
end
