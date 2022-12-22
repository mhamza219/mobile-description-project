class MdescriptionsController < ApplicationController

	def index
		@mdescriptions = Mdescription.all
	end

	def new
		@mdescription = Mdescription.new
	end

	def show
		@mdescription = Mdescription.find(params[:id])
	end

	def create
		@mdescription = Mdescription.new(mdescription_params)
		if @mdescription.save
			flash[:success] = "mobile was created"
			redirect_to "/mdescriptions"
		else
			render :new
		end
	end

	def edit
		@mdescription = Mdescription.find(params[:id])
	end

	def update
		@mdescription = Mdescription.find(params[:id])
		@mdescription.update(mdescription_params)
		flash[:warning] = "book mobile updated"
		redirect_to "/mdescriptions"
	end

	def destroy
		@mdescription = Mdescription.find(params[:id])
		@mdescription.destroy
		flash[:danger] = "book was deleted"
		redirect_to "/mdescriptions"
	end

	private

	def mdescription_params
		params.require(:mdescription).permit(:specification, :price, :mobile_id)

	end
end
