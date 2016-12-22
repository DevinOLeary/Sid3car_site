class InquiriesController < ApplicationController
  def index
  end
  def new
    @inquiry = Inquiry.new
  end

def create
  @inquiry = Inquiry.new(allowed_params)
  if @inquiry.save
    flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
  else
    flash.now[:error] = 'Cannot send message.'
    render :new
  end
end

private

def allowed_params
  params.require(:inquiry).permit(:name, :email, :message)
end

end
