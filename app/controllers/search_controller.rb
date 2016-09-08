class SearchController < ApplicationController
  def index
    if params[:query].present?
      @meats = Meat.search(params[:query])
    else
      @meats = Meat.all
    end
  end
end
