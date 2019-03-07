class WelcomesController < ApplicationController
    def index
        gon.golfs =  Golf.all
    end
end 