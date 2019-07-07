class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
	end
	
	def new
		@picture = Picture.new
		@figure = Figure.all
		options=[]
		cont=1
		@figure.each do |f| 
			options[cont]=[@figure.name,@figure.name]
			cont =cont+1
		end
		@opts=options
	end
	
	def create
		@picture = Picture.new(picture_params)
		if @picture.save
			redirect_to'/pictures'
		else
			render '/picture/new'
		end
	end
	
	private

		def picture_params
			params.require(:picture).permit(:name,:kind_selection,:sides,:description,:color_selection)
		end


end
