class PkidsController < ApplicationController
	def new
		@pkid = Pkid.new
		@age = 4
		render action: "new", layout: "eipblank"
	end

	def create
		@pkid = form_input(0,params[:pkid])
		redirect_to edit_pkid_path(@pkid)
	end

	def edit
		@pkid = Pkid.find(params[:id])
		render action: "edit", layout: "eipblank"
	end

	def update
		@pkid = Pkid.find(params[:id])
		@pkid = form_input(@pkid.id,params[:pkid])
		redirect_to edit_pkid_path(@pkid)
	end

	private

	def form_input(id,params)
		par = params
		if id==0
			@pkid = Pkid.new
		else
			@pkid = Pkid.find(id)
		end
		par[:devkid].each do |k,v|
			@pkid.devkid[k]=v
		end
		par[:addfo].each do |k,v|
			@pkid.addfo[k]=v
		end
		@pkid.ekid_id = 1
		@pkid.save
		return @pkid
	end


end






