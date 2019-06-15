class ProgesController < ApplicationController

	def index
		@proges_index = Proge.all
		render action: "index", layout: "eipblank"
	end

	def show
		@proge = Proge.find(params[:id])
		render action: "show", layout: "eipblank"
	end

	def new
		@proge = Proge.new
		render action: "new", layout: "eipblank"
	end

	def create
		@proge = Proge.new(proge_params)
		if @proge.save 
			redirect_to progeindex_path
		else
			render @proge.errors.full_messages
			render :new
		end

	end

	def edit
		@proge = Proge.find(params[:id])
		render action: "edit", layout: "eipblank"
	end

	def update
		@proge = Proge.find(params[:id])
		if @proge.update(proge_params)
			redirect_to progeindex_path
		else
			render @proge.errors.full_messages
			render :new
		end
	end

	def destroy
		@proge = Proge.find(params[:id])
		@proge.destroy
		redirect_to progeindex_path
	end

	private

	def proge_params
		params.require(:proge).permit(:name, 
																	:date, 
																	:venue, 
																	:start,
																	:end)
	end
	
end