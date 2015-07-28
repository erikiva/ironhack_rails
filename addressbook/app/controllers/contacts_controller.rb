class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(name: :asc)
  end

  def search
    @contacts = Contact.where('name like ?', "%#{params[:q]}%" )
    render 'index'
  end

  def new 
  end

  def create
  end

  def destroy
  end

  def show
    @contact = Contact.find(params[:id])
  end
  private

   def contact_params
      params.require(:contact).permit(:name, :address, :email, :phone, :search_string)
   end
end
