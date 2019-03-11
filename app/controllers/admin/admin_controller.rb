class Admin::AdminController < AdminController

	def index
		@carsharings = Carsharing.all
	end

	def show
	end

	def edit
	end
end
