class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

def create
  @inquiry = Inquiry.new(allowed_params)
  if @inquiry.valid?
    InquiryMailer.new_inquiry(@inquiry).deliver
    redirect_to root_path, notice: "Your messages has been sent."
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
