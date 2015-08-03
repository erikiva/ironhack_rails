class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(name: :asc)
  end

  def search
    @contacts = Contact.where('name like ?', "#{params[:q]}%" )
    render 'index'
  end

  def new 
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    
    if @contact.save
      redirect_to action: 'index', controller: 'contacts', id: @contact.id
    else 
      @errors = @contact.errors.full_messages
      render 'new'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end 

  def update
    @contact = Contact.find params[:id]
    if @contact.update_attributes contact_params
      redirect_to contact_path(@contact)
    else
      @errors = @contact.error.full_messages
      render 'edit'
    end
  end
  
  def favourite
    @contact = Contact.find params[:id]
    @contact.favourite = !@contact.favourite
    @contact.save
    render 'show'
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to contacts_path
  end

  def show
    @contact = Contact.find(params[:id])
  end

  private
    def contact_params
         params.require(:contact).permit(:name, :phone, :email, :address, :avatar) 
    end 
end
