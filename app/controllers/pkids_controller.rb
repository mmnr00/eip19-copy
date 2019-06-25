class PkidsController < ApplicationController
	def new
		#@pkid = Pkid.new
		render action: "new", layout: "eipblank"
	end

	def create
		par = params[:pkid]
		@pkid = Pkid.new
		par[:devkid].each do |k,v|
			@pkid.devkid[k]=v
		end
		par[:addfo].each do |k,v|
			@pkid.addfo[k]=v
		end
		@pkid.ekid_id = 1
		@pkid.save
	end
end