class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render :contacts
  end

  def show
    @contact = Contact.find(params[:id])
    render :contact
  end

  def about
    render :about
  end

  def new
    @contact = Contact.new
    render :add_contact
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path
    else
      render :add_contact
    end
  end

  def delete_contact
    @contact = Contact.find(params[:id])
    render :delete_contact
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

  def not_found
    render :not_found
  end

  def search_results
    @contacts = Contact.where(:first_name =>params[:first_name])
    if @contacts.any? == true
      render :search_results
    else
      render :not_found
    end
  end

  def update_contact
    @contact = Contact.find(params[:id])
    render :update_contact
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
      redirect_to "/contacts/#{@contact.id}"
    else
      render :update_contact
    end
  end

  def contact_params
    { first_name: params[:contact][:first_name], last_name: params[:contact][:last_name], email: params[:contact][:email], note: params[:contact][:note] }
  end

end
