class ContactsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @contact = Contact.new
  end

  def show_all
    @contact = Contact.all
    if @contact
      render json: @contact
    end
  end

  def create
    @contact = Contact.new(secure_params)
    if @contact.save
      render json: @contact
    end
  end

  def search
    search = params[:search]
    @contact = Contact.where("first_name LIKE ? OR last_name LIKE ? OR home_number LIKE ? OR mobile_number LIKE ? OR"\
                              " email LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    render json: @contact
  end

  def edit

  end

  def show

  end

  def update

  end

  protected

  def secure_params
    params.permit(:first_name, :last_name, :home_number, :mobile_number, :email)
  end

end
