class ScesController < ApplicationController
	before_action :set_sce, except: [:new,:create]
	before_action :set_all

	def new
		@sce = Sce.new
	end

	def create
		@sce = Sce.new(sce_params)
		@sce.save
		redirect_to admin_index_path

	end

	def edit
	end

	def update
		@sce.update(sce_params)
		@sce.save
		redirect_to admin_index_path
	end

	def destroy
		if @sce.ekids.count > 0
			flash[:danger] = "Please remove all children in programme before deletion" 
		else
			@sce.destroy
			flash[:success] = "Deletion Successful"
		end
		redirect_to admin_index_path
	end


	def show
		@ekids = @sce.ekids
	end

	def confsce
		@ekid = Ekid.find(params[:ekid])
		@ekid.sce_id = @sce.id
		@ekid.stat = "CONF"
		@ekid.save
		redirect_to sce_path(@sce)
	end

	def rmvsce
		@ekid = Ekid.find(params[:ekid])
		if @ekid.skid.present?
			flash[:danger] = "Please remove screening and feedback data before removal"
		else
			@ekid.sce_id = nil
			@ekid.stat = "CONFIRM"
			@ekid.save
			flash[:success] = "Removal Successful"
		end
		
		redirect_to sce_path(@sce)
	end


	private

	def set_sce
		@sce = Sce.find(params[:id])
	end

	def sce_params
		params.require(:sce).permit(:name,
																:date,
																:venue,
																:loc)
	end

	def set_all
		@admin = current_admin
	end

end