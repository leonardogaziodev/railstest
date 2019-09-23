class NamesController < ApplicationController

	def index
		@names = Name.all
	end

	def show

	end

	def new
		@name = Name.new
	end

	def create
		@name = Name.new(prms)
		if @name.save
			redirect_to names_path
		else
				redirect_to new_name_path, :alert => "Por favor informe os dados corretamente!!"
		end
	end

	def edit
		@name = Name.find(params[:id])
	end

	def update
		@name = Name.find(params[:id])
		if @name.update_attributes(prms)
			  redirect_to names_path
		else
				redirect_to edit_name_path(@name), :alert => "Por favor informe os dados corretamente!!"
		end
	end

	def destroy
		@name = Name.find(params[:id])
		@name.destroy
		redirect_to names_path
	end

	private
		def prms
			params.require(:name).permit(:name, :surname)
		end

end
