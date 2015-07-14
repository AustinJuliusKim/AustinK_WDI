class BeansController < ApplicationController
	def index # generates the index html
		if params[:q]
			@beans = Bean.where('name like ?', '%' + params[:q] + '%')
			#logger.debug()
		else
			@beans = Bean.all
		end
	end

	def show #generates the show html
		@bean = Bean.find(params[:id]) # find bean
	end

	def new # part 1 of new bean
		@bean = Bean.new
	end

	def create # part 2 of create new bean
		#logger.debug("\n The params are: #{params}")
		@bean = Bean.new(params.require(:bean).permit(:name, :roast, :origin, :quantity, :image)) #params is a hash
		if @bean.save
			redirect_to beans_path
		else 
			render :new
		end
	end

	def edit
		@bean = Bean.find(params[:id]) # find bean
	end

	def update
		@bean = Bean.find(params[:id]) # find bean

		if @bean.update_attributes(params.require(:bean).permit(:name, :roast, :origin, :quantity))
			redirect_to beans_path
		else
			render :edit
		end
	end

	def destroy
		@bean = Bean.find(params[:id]) # find bean
		@bean.destroy
		redirect_to beans_path
	end
end # ends the class



#Controller Action

#Route

#View Template