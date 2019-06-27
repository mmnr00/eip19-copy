class EkidsController < ApplicationController
	
	def index
		@ekids = Ekid.all
		render action: "index", layout: "eipblank"
	end

	def ekidconf
		@ekid = Ekid.find(params[:id])
		render action: "ekidconf", layout: "eipblank"
	end

	def new
		@ekid = Ekid.new
		render action: "new", layout: "eipblank"
	end

	def create
		@ekid = Ekid.new(ekid_params)
		if @ekid.save 
			redirect_to new_pkid_path(ekid: @ekid.id)
		else
			render @ekid.errors.full_messages
			render :new
		end
	end

	def edit
		@ekid = Ekid.find(params[:id])
		render action: "edit", layout: "eipblank"
	end

	def update
		@ekid = Ekid.find(params[:id])
		if @ekid.update(ekid_params)
			if (pkid = @ekid.pkid).present?
				redirect_to edit_pkid_path(pkid,ekid: @ekid.id)
			else
				redirect_to new_pkid_path(ekid: @ekid.id)
			end
		else
			render @ekid.errors.full_messages
			render :edit
		end
	end

	private

	def ekid_params
		params.require(:ekid).permit(:name,
																:ic,
																:gdr,
																:dob,
																:dun,
																:addr,
																:mph,
																:fname,
																:fage,
																:fph,
																:femail,
																:fedu,
																:fwork,
																:fworktp,
																:mname,
																:mage,
																:mph,
																:memail,
																:medu,
																:mwork,
																:mworktp,
																:sib,
																:phist,
																:phisttp,
																:pinc,
																:ref,
																:refloc,
																:prbtp,
																:prbot)
	end


end