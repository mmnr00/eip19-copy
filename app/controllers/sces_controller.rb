class ScesController < ApplicationController
	before_action :set_sce#, only: [:show]
	before_action :set_all


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
		@ekid.sce_id = nil
		@ekid.stat = "CONFIRM"
		@ekid.save
		redirect_to sce_path(@sce)
	end


	private

	def set_sce
		@sce = Sce.find(params[:id])
	end

	def set_all
		@admin = current_admin
	end

end