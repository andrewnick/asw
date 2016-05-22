class PagesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_family, only: [:rsvp, :family_update]



	def home
		@greeting = 'Welcome'
	end

	def rsvp
	end

	def family_update
	    respond_to do |format|
	      if @family.update(family_params)
	        format.html { redirect_to rsvp_path, notice: "Thanks, you have sucessfully RSVP'd." }
	        format.json { render :show, status: :ok, location: @family }
	      else
	        format.html { redirect_to rsvp_path, warning: "It looks like this didn't work" }
	        format.json { render json: @family.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def registry
		
	end

	def location
		
	end

	private
		def set_family
			@family = Family.find(current_user.family)
		end
		def family_params
			params.require(:family).permit(:family_name, users_attributes: [:id, :attending, :first_name])
		end

end
