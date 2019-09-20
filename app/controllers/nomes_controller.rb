class NomesController < ApplicationController

	def index
		@nomes = Nome.all
	end

	def show

	end

	def new
		@nome = Nome.new
	end

	def create
		@nome = Nome.new(parametros)
		if @nome.save
			redirect_to nomes_path
		else
			redender 'new'
		end
	end

	def edit
		@nome = Nome.find(params[:id])
	end

	def update
		@nome = Nome.find(params[:id])
		if @nome.update_attributes(parametros)
			redirect_to nomes_path
		else
			redender 'new'
		end
	end

	def destroy
		@nome = Nome.find(params[:id])
		@nome.destroy
		redirect_to nomes_path
	end

	private
		def parametros
			params.require(:nome).permit(:nome, :sobrenome)
		end

end
