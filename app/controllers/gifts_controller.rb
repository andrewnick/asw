class GiftsController < ApplicationController
 	before_action :set_gift, only: [:update]
  before_action :authenticate_user!


	def update
      if @gift.update(gift_params)
        render json: @gift
      else
        render json: @gift.errors, status: :unprocessable_entity
      end
    end

	def index
      @gifts = Gift.all.order("LOWER(item)")
      @user_id = current_user.id;
    end

    private

		def gift_params
			params.require(:gift).permit(:item, :chosen, :user_id)
		end

	    def set_gift
	    	@gift = Gift.find(params[:id])
	    end
end
