class ProgesController < ApplicationController

	def schperse
		@proge = Proge.find(params[:proge])
		render action: "schperse", layout: "eipblank"
	end

	def findperse
		if params[:ic].blank?
			flash.now[:danger] = "Please key in"
		else
	    @perse = Perse.where("ic like?", "%#{params[:ic]}%")
	    flash.now[:danger] = "Tiada rekod. Sila daftar di ruangan dibawah" unless @perse.present?
	  end
  	respond_to do |format|
		  format.js { render partial: 'proges/result' } 
		end   
	end

	def regproge
		Perproge.create(perse_id: params[:perse],
										proge_id: params[:proge],
										stat: "REG")
		redirect_to regconf_path(proge: params[:proge], perse: params[:perse])
	end

	def regconf
		@perproge = Perproge.where(proge_id: params[:proge], perse_id: params[:perse]).first
		render action: "regconf", layout: "eipblank"
	end

	def editreg
		@perse = Perse.find(params[:id])
		@proge = Proge.find(params[:proge])
		render action: "editreg", layout: "eipblank"
	end

	def updreg
		@perse = Perse.find(params[:perse][:id])
		@proge = Proge.find(params[:perse][:proge])
		if @perse.update(perse_params)
			Perproge.create(perse_id: @perse.id,
											proge_id: @proge.id,
											stat: "REG")
			redirect_to regconf_path(proge: @proge.id, perse: @perse.id)
		else
			render @perse.errors.full_messages
			render :new
		end
	end

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

	def perse_params
		params.require(:perse).permit(:name, 
																	:ic, 
																	:ph, 
																	:inc)
	end

	def proge_params
		params.require(:proge).permit(:name, 
																	:date, 
																	:venue, 
																	:start,
																	:end)
	end
	
end