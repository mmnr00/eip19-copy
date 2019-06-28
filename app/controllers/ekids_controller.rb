class EkidsController < ApplicationController
	
	def index
		@ekids = Ekid.all
		render action: "index", layout: "eipblank"
	end

	def ekidconf
		@ekid = Ekid.find(params[:id])
		@diff = (Date.today.year*12+Date.today.month) - (@ekid.dob.year*12+@ekid.dob.month)
		@year = @diff/12
		@month = @diff - @year*12
		render action: "ekidconf", layout: "eipblank"
	end

	def ekidpdf
		@ekid = Ekid.find(params[:id])
		@diff = (Date.today.year*12+Date.today.month) - (@ekid.dob.year*12+@ekid.dob.month)
		@year = @diff/12
		@month = @diff - @year*12
		respond_to do |format|
	 		format.html
	 		format.pdf do
		   render pdf: "#{@ekid.name}",
		   template: "ekids/_profile.html.erb",
		   #disposition: "attachment",
		   #page_size: "A6",
		   orientation: "portrait",
		   layout: 'pdf.html.erb'
			end
		end
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

	def xlsekid
	end

	def upldekid
		xlsx = Roo::Spreadsheet.open(params[:file])
    header = xlsx.row(xlsx.first_row+2)
    @header2 = xlsx.row(xlsx.first_row+1)
    ((xlsx.first_row+3)..(xlsx.last_row)).each do |n|
      xlsx.row(n)
      @row = Hash[[header, xlsx.row(n)].transpose]
      ek = Ekid.create(name: @row["name"],
      						ic: @row["ic"],
      						gdr: @row["gdr"],
      						dob: @row["dob"],
      						dun:	@row["dun"],
									addr:	@row["addr"],
									mph:	@row["mph"],
									fname:	@row["fname"],
									fage:	@row["fage"],
									fph:	@row["fph"],
									femail:	@row["femail"],
									fedu:	@row["fedu"],
									fwork:	@row["fwork"],
									fworktp:	@row["fworktp"],
									mname:	@row["mname"],
									mage:	@row["mage"],
									mmph:	@row["mmph"],
									memail:	@row["memail"],
									medu:	@row["medu"],
									mwork:	@row["mwork"],
									mworktp:	@row["mworktp"],
									sib:	@row["sib"],
									phist:	@row["phist"],
									phisttp:	@row["phisttp"],
									pinc:	@row["pinc"],
									ref:	@row["ref"],
									refloc:	@row["refloc"],
									prbtp:	@row["prbtp"],
									prbot:	@row["prbot"])

      # Start P Kid
      pk = Pkid.new(ekid_id: ek.id)

      (30..64).each do |n|
      	if @row.values[n].present?
      		pk.devkid[@row.keys[n]] = @row.values[n]
      	end
      end

      (66..68).each do |n|
      	pk.addfo[@row.keys[n]] = @row.values[n]
      end

      (70..87).each do |n|
      	pk.health[@row.keys[n]] = @row.values[n]
      end

      (89..92).each do |n|
      	pk.birth[@row.keys[n]] = @row.values[n]
      end

      (94..102).each do |n|
      	pk.grow[@row.keys[n]] = @row.values[n]
      end

      (104..119).each do |n|
      	pk.physpch[@row.keys[n]] = @row.values[n]
      end

      (121..125).each do |n|
      	pk.agr[@row.keys[n]] = @row.values[n]
      end

      pk.save
      
    end
    flash[:success] = "CLASSROOMS ADDED"
    #redirect_to ekidindex_path
	end

	def upldekid_work
		xlsx = Roo::Spreadsheet.open(params[:file])
    header = xlsx.row(xlsx.first_row+2)
    ((xlsx.first_row+3)..(xlsx.last_row)).each do |n|
      xlsx.row(n)
      row = Hash[[header, xlsx.row(n)].transpose]
      ek = Ekid.create(name: row["name"],
      						ic: row["ic"],
      						gdr: row["gdr"],
      						dob: row["dob"],
      						dun:	row["dun"],
									addr:	row["addr"],
									mph:	row["mph"],
									fname:	row["fname"],
									fage:	row["fage"],
									fph:	row["fph"],
									femail:	row["femail"],
									fedu:	row["fedu"],
									fwork:	row["fwork"],
									fworktp:	row["fworktp"],
									mname:	row["mname"],
									mage:	row["mage"],
									mmph:	row["mmph"],
									memail:	row["memail"],
									medu:	row["medu"],
									mwork:	row["mwork"],
									mworktp:	row["mworktp"],
									sib:	row["sib"],
									phist:	row["phist"],
									phisttp:	row["phisttp"],
									pinc:	row["pinc"],
									ref:	row["ref"],
									refloc:	row["refloc"],
									prbtp:	row["prbtp"],
									prbot:	row["prbot"])
    end
    flash[:success] = "CLASSROOMS ADDED"
    redirect_to ekidindex_path
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
																:mmph,
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