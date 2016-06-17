require 'google_sheets'

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
	        format.html { redirect_to rsvp_path, notice: "Thanks for your RSVP! We look forward to seeing you at the wedding!" }
	        format.json { render :show, status: :ok, location: @family }
	      else
	        format.html { redirect_to rsvp_path, warning: "Oops, It looks like this didn't work" }
	        format.json { render json: @family.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def registry
		@registry = Registry.all
	end

	# update registry
	# @params registry_item_id
	def add_to_registry
		@user = current_user
		@registry = Registry::find(:id);
		respond_to do |format|
		  if @registry.update(regirstry_params)
		    format.html { redirect_to @user, notice: 'User was successfully updated.' }
		    format.json { render :show, status: :ok, location: @user }
		  else
		    format.html { render :edit }
		    format.json { render json: @user.errors, status: :unprocessable_entity }
		  end
		end
	end

	def details
		
	end

	private
		def set_family
			@family = Family.find(current_user.family)
		end
		def family_params
			params.require(:family).permit(:family_name, users_attributes: [:id, :attending, :first_name])
		end
end
