class EventsController < ApplicationController
	def new
    	@event = current_user.events.build
    end

    def create
        @event = current_user.Events.build(params[:event])
        if @event.save
            redirect_to root_path, :flash => { :notice => "  Event created!" }
        else
         	redirect_to new_user_event_path , :flash => { :alert => " Sorry try again :(" }
        end
    end

    def show
        @user = User.find(params[:user_id])
        @event = @user.Events.find(params[:id])
    end

    def destroy
        @event = current_user.Events.find(params[:id])
        @event.destroy
        redirect_to user_events_path, :flash => { :notice => "  Event successfully deleted" }
    end

    def edit
        @event = current_user.Events.find(params[:id])
    end

    def update
      @event = current_user.Events.find(params[:id])
      if @event.update_attributes(params[:event])
        redirect_to user_events_path, :flash => { :notice => "  Event Updated!" }
      else
        render 'edit'
      end
    end
end
