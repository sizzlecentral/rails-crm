class ContactsController < ApplicationController

  def contacts
    @contacts = Contact.all
    render :contacts
  end

  def about
    render :about
  end

  def add_contact
    render :add_contact
  end

  def delete_contact
    render :delete_contact
  end

  def not_found
    render :not_found
  end

  def search_results
    render :search_results
  end

  def update_contact
    render :update_contact
  end

end
