class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Bericht verzonden!'
    else
      flash.now[:error] = 'Bericht kon niet verzonden worden'
      render :new
    end
  end
end
