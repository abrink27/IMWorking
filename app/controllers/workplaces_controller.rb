class WorkplacesController < ApplicationController

	def index
		@workplace = Workplace.all
	end
end
