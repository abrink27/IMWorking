class WorkplacesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@workplace = Workplace.all
	end

	def show
		@workplace = Workplace.find(params[:id])
		render layout: false
	end

	def new
		@workplace = Workplace.new
	end

	def create
		Workplace.create(workplace_params)
		redirect_to root_path
	end

	private

	def workplace_params
		params.require(:workplace).permit(:title)
	end
end
