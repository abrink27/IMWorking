class WorkplacesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@workplace = Workplace.all
	end


	def new
		@worplace = Workplace.new
	end

	def create
		current_user.workplaces.create(user_params)
	end

	private

	def workplace_params
		params.require(:workplace).permit(:title, :zipcode)
	end
end
