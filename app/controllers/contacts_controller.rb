class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'message envoyer avec succès'
    else
      flash.now[:error] = "Erreur lors de l'envoye du message"
      render :new
    end
  end
end
