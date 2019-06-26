class EkidsController < ApplicationController
	
	def new
		@ekid = Ekid.new
		render action: "new", layout: "eipblank"
	end

	def create
		@ekid = Ekid.new(ekid_params)
		if @ekid.save 
			redirect_to edit_ekid_path(@ekid)
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
			redirect_to edit_ekid_path(@ekid)
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