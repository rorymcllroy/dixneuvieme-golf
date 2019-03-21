class PassengersController < ApplicationController
  
  before_action :authenticate_user!  

  def create
    @carsharing = Carsharing.find(params[:carsharing_id])
    # Amount in cents
    @amount = (@carsharing.price)*100 # *100 à ajouter

      if @amount == 0 
        puts "<><><><><><><><><><><><><><><><>"
        puts "Montant égal à 0"
        puts "<><><><><><><><><><><><><><><><>"
        @passenger = Passenger.new(passenger_id: current_user.id, carsharing_id: params[:carsharing_id], stripe_customer_id: "free")
        if @passenger.save
          redirect_to carsharings_path
          flash[:success] = "Vous avez rejoint ce covoiturage"
        end
      else
        puts "<><><><><><><><><><><><><><><><>"
        puts "Montant différent de 0"
        puts "<><><><><><><><><><><><><><><><>"
      

      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
      
      charge = Stripe::Charge.create(
        :customer    => customer.id, # stipe id que je dois récupérer !!! charge[:customer]
        :amount      => @amount,
        :description => 'Paiement du participant',
        :currency    => 'eur'
      )
        
      @passenger = Passenger.new(passenger_id: current_user.id, carsharing_id: params[:carsharing_id], stripe_customer_id: customer.id)
      if @passenger.save     
        redirect_to carsharings_path
        flash[:success] = "Vous avez rejoint ce covoiturage"
      end
    


      end
  end    
end
