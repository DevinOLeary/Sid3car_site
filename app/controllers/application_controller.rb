class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def new
    @inquiry = Inquiry.new 
  end
end
