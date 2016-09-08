class SearchController < ApplicationController
  def index
    if params[:query].present?
      @search_results = Meat.search(params[:query])
    else
      @meats = Meat.all
    end
  end
end
