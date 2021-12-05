class UappController < ApplicationController

	
	def validate
        if Truemail.valid?(params[:q])  #have set default validation to smtp in configuration
        	redirect_to uapp_path
        	flash[:notice] = params[:q] + " is Validated"
        else
        	redirect_to uapp_path
        	flash[:notice] = params[:q] + " is Not Validated"
        end
		
	end
end