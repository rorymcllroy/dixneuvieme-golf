class GolfcarsharingsController < ApplicationController  
  def index
    @carsharing = Carsharing.all.where(golf_id: params[:golf_id])
    @golf = Golf.find(params[:golf_id])
  end
end