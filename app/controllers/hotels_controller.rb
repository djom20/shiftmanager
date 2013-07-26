class HotelsController < ApplicationController
	def new		
    	@hotel = current_user.Hotels.build
    end

    def create      
        @hotel = current_user.Hotels.build(params[:hotel])
        if @hotel.save
            redirect_to root_path, :flash => { :notice => "  Hotel created!" }
        else
         	redirect_to new_user_hotel_path , :flash => { :alert => " Sorry try again :(" }
        end
    end

    def show
        @user = User.find(params[:user_id])
        @hotel = @user.Hotels.find(params[:id])
    end

    def destroy
        @hotel = current_user.Hotels.find(params[:id])
        @hotel.destroy
        redirect_to user_hotels_path, :flash => { :notice => "  Hotel successfully deleted" }
    end

    def edit
        @hotel = current_user.Hotels.find(params[:id])
    end

    def update
      @hotel = current_user.Hotels.find(params[:id])
      if @hotel.update_attributes(params[:hotel])
        redirect_to user_hotels_path, :flash => { :notice => "  Hotel Updated!" }
      else
        render 'edit'
      end
    end
end
