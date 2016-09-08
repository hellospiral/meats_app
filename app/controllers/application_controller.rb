class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :categories
  private
  def categories
    @categories = Category.all
  end
end
