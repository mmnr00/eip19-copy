class PersesController < ApplicationController
	def index
		render action: "index", layout: "eipblank"
	end
end