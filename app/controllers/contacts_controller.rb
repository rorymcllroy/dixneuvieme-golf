class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message envoyé avec succès'
    else
      flash.now[:error] = "Erreur lors de l'envoi du message"
      render :new
    end
  end
end
