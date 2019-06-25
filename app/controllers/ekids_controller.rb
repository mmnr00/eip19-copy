class EkidsController < ApplicationController
	
	def new
		@ekid = Ekid.new
		render action: "new", layout: "eipblank"
	end

	def create
	end

	def edit
		@ekid = Ekid.find(params[:id])
		render action: "edit", layout: "eipblank"
	end

	def update
	end


end