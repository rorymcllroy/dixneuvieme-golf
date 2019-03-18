class GolfcarsharingsController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    @carsharing = Carsharing.all.where(golf_id: params[:golf_id])
    @golf = Golf.find(params[:golf_id])
  end
end