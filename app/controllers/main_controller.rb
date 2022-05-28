class MainController < ApplicationController
  def index
    @contact = Contact.new
  end
end
