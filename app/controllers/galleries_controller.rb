class GalleriesController < ApplicationController
	def index
		@contents = Content.all		
	end
end
