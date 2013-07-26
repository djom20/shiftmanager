class HomeController < ApplicationController
	before_filter :authenticate_user!, :except => [:show]

	def index
		@events = Event.order("created_at desc").limit(10)
		respond_to do |format|
			format.html  # index.html.erb
		    format.json  { render :json => @event }
		end
	end
end
