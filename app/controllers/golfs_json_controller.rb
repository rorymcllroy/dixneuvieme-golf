class GolfsJsonController < ApplicationController
  def index
    @golfs = Golf.order(:name).where("name ilike ?", "%#{params[:term]}%")
    render json: @golfs.map(&:name)
  end
end
