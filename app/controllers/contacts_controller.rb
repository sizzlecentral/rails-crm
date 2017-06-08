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
    render :contacts
  end

  def not_found
    render :not_found
  end

  def search_results
    render :search_results
  end

  def update
    @meme = Meme.find(params[:id])
    if @meme.update_attributes(meme_params)
      redirect_to "/memes/#{@meme.id}"
    else
      render :update_contact
    end
  end

  def contact_params
    { first_name: params[:contact][:first_name], last_name: params[:contact][:last_name], email: params[:email], note: params[:note] }
  end

end
