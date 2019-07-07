class FiguresController < ApplicationController
	
	def index
		@figures = Figure.all
	end

	def new
		@figure = Figure.new	
	end

	def create
		@figure = Figure.new(figure_params)
		if @figure.save
			redirect_to '/figures'
		else
			render '/figure/new'
		end
	end

	def edit
		@figure = Figure.find(params[:id])
	end

	def update
		@figure = Figure.find(params[:id])
		if @figure.update(figure_params)
			redirect_to '/figures'
		else
			render '/figures/:id/edit'
		end
	end
	
	def destroy
		@figure = Figure.find(params[:id])
		@figure.destroy
		redirect_to '/figures'
	end



	private
		def figure_params
			params.require(:figure).permit(:name,:description)
		end


end
